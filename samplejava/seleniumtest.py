import sys
from pyvirtualdisplay import Display
from selenium import webdriver

display = Display(visible=0, size=(800, 600))
display.start()

browser = webdriver.Firefox()
browser.get('http://192.168.33.30:8080/dev/')
print browser.title
var1 = browser.title
print var1
if "Hello Java2" in var1:
    print "Test Successful"
else:
    raise Exception("Test Failed")

browser.close()
