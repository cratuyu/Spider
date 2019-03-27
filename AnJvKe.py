# -*- coding: utf-8 -*-
"""
    created on 2019/3/27
    @author xiaoyu
"""
import time

from lxml import etree

import urllib.parse
import urllib.request
import random
import pymysql


class HouseSpider:

    def __init__(self):
        self.headers_list = [{"User-Agent": "Opera/9.80 (Windows NT 6.1; U; en) Presto/2.8.131 Version/11.11"},
                              {"User-Agent": "Mozilla/5.0 (Windows NT 6.1; rv:2.0.1) Gecko/20100101 Firefox/4.0.1"},
                              {"User-Agent": "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.0; Trident/4.0)"}]
        # 第一页 url = "https://nc.anjuke.com/sale/donghu/g1-p1/#filtersort"
        self.base_url = "https://nc.anjuke.com/sale/donghu/g1-p"
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
            sql = "insert into anjvke(title,houseType,size,height, buildYear, address, totalprice, price) " \
                  "VALUES(%s, %s, %s, %s, %s, %s, %s, %s)"
            self.cur.execute(sql, lst)
            self.db.commit()
        except Exception as e:
            print(e, "出错了")

    # 将拿到的解析html 解析出需要的数据 以列表形式返回
    def parseData(self, parseHtml):
        # 将一页的 每一条售房信息取出 存入列表中
        list_item = parseHtml.xpath("//body/div[@id='container']/div[@id='content']/div[@class='sale-left']"
                                    "/ul[@id='houselist-mod-new']/li[@class='list-item']")
        print(list_item[0])

    def workOn(self):
        for i in range(2):
            url = self.base_url + str(i) + self.suffix_url
            headers = random.choice(self.headers_list)
            html = self.readPage(url, headers)
            # 构造解析对象
            parseHtml = etree.HTML(html)
            self.parseData(parseHtml)


if __name__ == '__main__':
    housespider = HouseSpider()
    housespider.workOn()
