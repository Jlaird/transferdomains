from selenium import selenium
import unittest, time, re

class CreateArticle(unittest.TestCase):
    def setUp(self):
        self.verificationErrors = []
        self.selenium = selenium("127.0.0.1", 4444, "firefox", "http://www.bulkregister.com/myaccount/")
        self.selenium.start()

    def test_create_article(self):
        sel = self.selenium
        sel.wait_for_page_to_load("30000")
        #
        # sel.open("/login")
        sel.type("id=ctl00_Main_loginid", "Username")
        sel.type("id=ctl00_Main_txtpassword", "Password")
        sel.click("id=ctl00_Main_BtnLogin")
        time.sleep(10)

        #list of domain ids
        array = []
        
        for url in array:
            sel.open("/domains/control-panel/default.aspx?DomainNameID="+url)
            time.sleep(7)
            sel.click("link=General Settings")
            time.sleep(7)
            sel.click("link=Email Auth Info to Registrant")
            time.sleep(7)
            pass

    def tearDown(self):
        self.selenium.stop()
        self.assertEqual([], self.verificationErrors)

if __name__ == "__main__":
    unittest.main()
