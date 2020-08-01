#!/usr/bin/env python3
from selenium import webdriver

addr = ["https://www.esl-lab.com/difficult/cyberbullying/", "https://b.hatena.ne.jp/", "https://saucenao.com/", "http://waifu2x.udp.jp/", "http://gpu.rocks/#/", "https://www.facebook.com/"]

dr = [] 
for _ in range(6): 
    dr.append(webdriver.Firefox()) 


for i in range(6):
    dr[i].get("https://www.google.com")
