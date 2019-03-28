# -*- coding: utf-8 -*-
"""
    created on 2019/3/27
    @author xiaoyu
"""
import datetime
import time

from lxml import etree

import urllib.parse
import urllib.request
import random
import pymysql
import re


# 最好采取分表存储的方式 根据一个区一张表的原则存储
class HouseSpider:
    def __init__(self):
        self.headers_list = [{"User-Agent": "Opera/9.80 (Windows NT 6.1; U; en) Presto/2.8.131 Version/11.11"},
                              {"User-Agent": "Mozilla/5.0 (Windows NT 6.1; rv:2.0.1) Gecko/20100101 Firefox/4.0.1"},
                              {"User-Agent": "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"}]
        # 第一页 url = "https://nc.anjuke.com/sale/donghu/g1-p1/#filtersort"
        self.base_url = "https://nc.anjuke.com/sale/xinjianqu/g1-p"
        self.suffix_url = "/#filtersort"
        # 建立对数据库的连接
        self.db = pymysql.connect("localhost", "root", "123456", charset="utf8", database="test")
        self.cur = self.db.cursor()

    # 向网站发起请求 返回请求的html
    def readPage(self, url, headers):
        req = urllib.request.Request(url, headers=headers)
        res = urllib.request.urlopen(req)
        html = res.read().decode("utf-8")
        return html

    # 将解析得到的数据 存入数据库
    def writePage(self, lst):
        try:
            sql = "insert into anjvke(title,houseType,size,height, buildYear, address, totalprice, price, createTime) " \
                  "VALUES({}, {}, {}, {}, {}, {}, {}, {}, {})"
            # 使用 * 将列表解成八个数据
            self.cur.execute(sql.format(*lst))
            self.db.commit()
        except Exception as e:
            print(e, "出错了")

    # 将拿到的解析html 解析出需要的数据 以列表形式返回
    def parseData(self, parseHtml):
        # 将一页的 每一条售房信息取出 存入列表中
        list_item = parseHtml.xpath("//body/div[@id='container']/div[@id='content']/div[@class='sale-left']"
                                    "/ul[@id='houselist-mod-new']/li[@data-from]"
                                    "")

        for item in list_item:
            lst = []
            # list_item 返回的是一个存储着多个DIV结点(实为lxml.etree._Element对象)
            # 依据lxml.etree._Element的文档 得知 该类的各实例方法
            lst.append("\'" + str(item.find("div[@class='house-details']/div[@class='house-title']/a").get('title') + "\'"))  # title
            # 共返回了四个span节点
            lst1 = item.findall("div[@class='house-details']/div[@class='details-item']/span")
            lst.append("\'" + lst1[0].text + "\'")  # houseType
            # 因为此方法匹配出的大小为列表形式， 取出后 再转为int型
            lst.append(int(re.findall("\d{2,4}", lst1[1].text)[0]))  # size
            lst.append("\'" + lst1[2].text + "\'")  # height
            lst.append(int(re.findall("\d{4}", lst1[3].text)[0]))  # buildYear
            lst.append("\'" + item.findall("div[@class='house-details']/div[@class='details-item']")[1].find("span").get("title") + "\'")  # address
            lst.append(float(item.find("div[@class='pro-price']/span[@class='price-det']/strong").text))  # totalprice
            lst.append(int(re.findall("\d{3,6}", item.find("div[@class='pro-price']/span[@class='unit-price']").text)[0]))  # price
            lst.append("\'" + datetime.datetime.now().strftime('%Y-%m-%d') + "\'" )
            print(lst)
            self.writePage(lst)

    def workOn(self):
        for i in range(30):
            url = self.base_url + str(i) + self.suffix_url
            headers = random.choice(self.headers_list)
            html = self.readPage(url, headers)
            # 构造解析对象
            parseHtml = etree.HTML(html)
            self.parseData(parseHtml)
            time.sleep(1)
        # 由于 每次隔段时间爬取均有重复数据 故爬取之后执行一条mysql去重语句
        self.cur.execute("delete a1 from anjvke a1,anjvke a2 where a1.createTime > a2.createTime and"
                         " a1.title = a2.title and a1.houseType = a2.houseType and a1.size = a2.size and"
                         " a1.height = a2.height and a1.buildYear = a2.buildYear")
        self.db.commit()
        # 关闭连接 释放资源
        self.cur.close()
        self.db.close()

if __name__ == '__main__':
    housespider = HouseSpider()
    housespider.workOn()
