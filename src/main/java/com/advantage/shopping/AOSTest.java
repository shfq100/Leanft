package com.advantage.shopping;


import com.hp.lft.report.ReportException;
import com.hp.lft.report.Reporter;
import com.hp.lft.report.Status;
import com.hp.lft.sdk.*;
import com.hp.lft.sdk.web.*;

//for App Model


/**
 * Created by hechuang on 4/10/2017.
 */
public class AOSTest {
    Browser browser;
    String multiBrowserFlag;
    BrowserType[] browserTypesToTest;
    String url;
    String usernameVal;
    String passwordVal;
    String emailVal;
    String accountNumber;
    String transferToAccountNumber;
    String transferAmount;
    String currentStepName;
    String currentStepDesc;
    AdvantageShoppingModel appModel;
    public void prepareTestData() {
        url = System.getProperty("url");
        usernameVal=System.getProperty("username");
        multiBrowserFlag=System.getProperty("multibrowser");
        System.out.println("properties url = " + url);
        System.out.println("properties usernameVal = " + usernameVal);
        if (url==null) {
            url = "http://workstation.modeloffice.org:8080";
        }
        if(usernameVal==null) {
            usernameVal = "AJ99038";
        }
        if(multiBrowserFlag==null)
        {
            multiBrowserFlag="true";
        }
        System.out.println("url = " + url);
        System.out.println("usernameVal = " + usernameVal);
        passwordVal = "Passw0rd";
        emailVal = "AJ9902@devops.com";
        accountNumber = "223108";
        transferToAccountNumber = "Anna Knight(12345)";
        transferAmount = "100.00";


    }
    public void launchBrowser(BrowserType browserType) {
        try {
            browser = BrowserFactory.launch(browserType);
        }
        catch (GeneralLeanFtException lfte) {
            // lfte.getMessage();
            try {
                Reporter.reportEvent("Browser Launch Failed", lfte.getMessage(), Status.Failed);
            } catch (ReportException re)
            {
                re.printStackTrace();
            }
        }
        catch (Exception e) {
            e.printStackTrace();

        }

    }
    // ****** testLogin method implemented using Application Model ******
    public void testLoginAM(BrowserType bt) {
        try {
            currentStepName = "Navigate to Home Page and Log In";
            currentStepDesc = "Navigate to the Login screen and log into the system";
            browser.navigate(url);

            // ***** AppModel based code is simpler and easier to read *****
            appModel.AdvantageShoppingPage().sync();
            if(bt.equals(BrowserType.CHROME))
                appModel.AdvantageShoppingPage().CHROME_USERICON().click();
            else
                appModel.AdvantageShoppingPage().IE_USERICON().click();

            
            appModel.AdvantageShoppingPage().LoginWebEditUsernameEditField().setValue(usernameVal);
            appModel.AdvantageShoppingPage().LoginWebEditPasswordEditField().setValue(passwordVal);
            appModel.AdvantageShoppingPage().SIGNINWebElement().click();

            //Verify.isTrue(appModel.iBankPage().WelcomeMessage().exists(), "Welcome message is shown after login");
        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e) {
            e.printStackTrace();

        }

    }

    public void testLogout(BrowserType bt) {
        try {
            currentStepName = "Log out of the system";
            currentStepDesc = "Click on the Logout link to log out of the system";
            if(bt.equals(BrowserType.CHROME))
            {
                WebElement chromeICON_USER=browser.describe(WebElement.class, new WebElementDescription.Builder()
                        .tagName("A").innerText(usernameVal+" My account My Orders Sign out ").build());
                if(chromeICON_USER.exists()) {
                    chromeICON_USER.click();
                    WebElement logoutMenuItem = browser.describe(WebElement.class, new WebElementDescription.Builder()
                            .className("option roboto-medium ng-scope").tagName("LABEL").innerText("Sign out").build());
                    logoutMenuItem.click();
                }

            }else
            {
                WebElement ICON_USER= browser.describe(WebElement.class, new WebElementDescription.Builder()
                        .tagName("A").innerText(" "+usernameVal+"    My account My Orders Sign out ").build());
                if(ICON_USER.exists()) {
                    ICON_USER.click();
                    WebElement logoutMenuItem = browser.describe(WebElement.class, new WebElementDescription.Builder()
                            .className("option roboto-medium ng-scope").tagName("LABEL").innerText("Sign out").build());
                    logoutMenuItem.click();
                }

            }







            Reporter.reportEvent(currentStepName,  currentStepDesc, Status.Passed);
            //Verify.isTrue(loginButton.exists(), "Login button is displayed after successful logout");

        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    // ****** testLogin method implemented using Application Model ******
    public void NavigateCategories()
    {
        try {
            currentStepName = "Navigate Categories";
            currentStepDesc = "each Category";
            WebElement Speakers= browser.describe(WebElement.class, new WebElementDescription.Builder()
                    .tagName("SPAN").innerText("SPEAKERS").build());
            assert(Speakers.exists());

            WebElement Tablets =browser.describe(WebElement.class, new WebElementDescription.Builder()
                    .tagName("SPAN").innerText("TABLETS").build());
            assert(Tablets.exists());

            WebElement Laptops = browser.describe(WebElement.class, new WebElementDescription.Builder()
                    .tagName("SPAN").innerText("LAPTOPS").build());
            assert (Laptops.exists());

            WebElement Mices = browser.describe(WebElement.class, new WebElementDescription.Builder()
                    .tagName("SPAN").innerText("MICE").build());
            assert(Mices.exists());



            Reporter.reportEvent(currentStepName,  currentStepDesc, Status.Passed);
            //Verify.isTrue(loginButton.exists(), "Login button is displayed after successful logout");

        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    public void shutdownBrowser() {
        try {
            currentStepName = "Close Browser/Tab";
            currentStepDesc = "Close the browser completely or the current opened tab if there are other tabs already opened";
            if (browser != null)
                browser.close();
            Reporter.reportEvent(currentStepName, currentStepDesc, Status.Passed);
        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void register(BrowserType bt) {
        try {
            currentStepName = "Navigate to Home Page and Log In";
            currentStepDesc = "Navigate to the Login screen and log into the system";
            browser.navigate(url);

            // ***** AppModel based code is simpler and easier to read *****
            appModel.AdvantageShoppingPage().sync();
            if(bt.equals(BrowserType.CHROME))
                appModel.AdvantageShoppingPage().CHROME_USERICON().click();
            else
                appModel.AdvantageShoppingPage().IE_USERICON().click();


            appModel.AdvantageShoppingPage().CREATENEWACCOUNTWebElement().click();
            appModel.AdvantageShoppingPage().sync();
            appModel.AdvantageShoppingPage().UsernameWebElement().click();

            appModel.AdvantageShoppingPage().RegisterWebEditUsernameEditField().setValue(usernameVal);
            appModel.AdvantageShoppingPage().RegisterWebEditEmailEditField().setValue(emailVal);
            appModel.AdvantageShoppingPage().RegisterWebEditPasswordEditField().setValue(passwordVal);
            appModel.AdvantageShoppingPage().RegisterWebEditConfirmPassEditField().setValue(passwordVal);
            appModel.AdvantageShoppingPage().RegisterWebEditUsernameEditField().setValue(usernameVal);
            appModel.AdvantageShoppingPage().IAgreeToTheWwwAdvantageOnlineShoppingComConditionsOfUseAndPrivacyNoticeWebElement().click();
            appModel.AdvantageShoppingPage().REGISTERWebElement().click();
            appModel.AdvantageShoppingPage().sync();
            //Verify.isTrue(appModel.iBankPage().WelcomeMessage().exists(), "Welcome message is shown after login");
        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e) {
            e.printStackTrace();

        }
    }


    // LeanFT Test #1 - Test Registration
    public void test1Registrater(BrowserType browserType)
    {
        try {

            String browserName =  browserType.getBrowserTypeString();

            Reporter.startTest("Test User Register " + browserName,
                    "This automated test tests the User Register capability using the "+ browserName + " browser");

            launchBrowser(browserType);
          //  if (browserType.equals(BrowserType.CHROME))
            //    usernameVal=usernameVal+"_C";
            appModel = new AdvantageShoppingModel(browser);
            register(browserType);


            appModel.AdvantageShoppingPage().sync();
            testLogout(browserType);
            shutdownBrowser();

            Reporter.endTest(Status.Passed);


        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
                Reporter.endTest(Status.Failed);
                testLogout(browserType);
                shutdownBrowser();
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e ) {
            e.printStackTrace();
        }
    }

    // LeanFT Test #2 - Test Login & Navigate Catogory
    public void test2Navigation(BrowserType browserType) {
        try {

            String browserName =  browserType.getBrowserTypeString();

            Reporter.startTest("Test Login & Navigation with " + browserName,
                    "This automated test tests the Login & Navigation capability using the "+ browserName + " browser");

            launchBrowser(browserType);
           // if (browserType.equals(BrowserType.CHROME))
             //   usernameVal=usernameVal+"_C";
            appModel = new AdvantageShoppingModel(browser);

            testLoginAM(browserType);
            NavigateCategories();
            testLogout(browserType);
            shutdownBrowser();

            Reporter.endTest(Status.Passed);


        }
        catch (GeneralLeanFtException lfte) {
            try
            {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
                Reporter.endTest(Status.Failed);
                testLogout(browserType);
                shutdownBrowser();
            } catch (ReportException re) {
                re.printStackTrace();
            }
        }
        catch (Exception e ) {
            e.printStackTrace();
        }

    }

    // LeanFT Test #3 - Perform purchase
    public void test3PurchaseProduct(BrowserType browserType) {
        try {

            String browserName = browserType.getBrowserTypeString();

            Reporter.startTest("Test Purchase product with " + browserName,
                    "This automated test tests the purchase product capability using the " + browserName + " browser");

            launchBrowser(browserType);
          //  if (browserType.equals(BrowserType.CHROME))
            //    usernameVal=usernameVal+"_C";
            appModel = new AdvantageShoppingModel(browser);

            testLoginAM(browserType);
            if(browserType.equals(BrowserType.INTERNET_EXPLORER))
                //IE
                appModel.AdvantageShoppingPage().SpeakersImgWebElement().click();
            else
                //Chrome
                appModel.AdvantageShoppingPage().SpeakersImgWebElement1().click();
            appModel.AdvantageShoppingPage().BUYNOWButton().click();
            appModel.AdvantageShoppingPage().ADDTOCARTButton().click();
            if(browserType.equals(BrowserType.INTERNET_EXPLORER))
                //IE
                appModel.AdvantageShoppingPage().CHECKOUT20000Button().click();
            else
                //Chrome
                appModel.AdvantageShoppingPage().CHECKOUT20000Button2().click();
            //appModel.AdvantageShoppingPage().CHECKOUT20000Button1().click();
            appModel.AdvantageShoppingPage().NEXTButton().click();
            appModel.AdvantageShoppingPage().MasterCreditImage().click();
            //appModel.AdvantageShoppingPage().CardNumberWebElement().click();
            appModel.AdvantageShoppingPage().CardNumberWebEditEditField().setValue("123456789012");
            //appModel.AdvantageShoppingPage().CVVNumberWebElement().click();
            appModel.AdvantageShoppingPage().CWNumberWebEditEditField().setValue("123");
            appModel.AdvantageShoppingPage().CardholderWebEditEditField().setValue(usernameVal);
            appModel.AdvantageShoppingPage().CardNumberWebEditEditField().setValue("123456789012");
            //appModel.AdvantageShoppingPage().CVVNumberWebElement().click();
            appModel.AdvantageShoppingPage().CWNumberWebEditEditField().setValue("123");
            appModel.AdvantageShoppingPage().PAYNOWWebElement().click();
            testLogout(browserType);
            shutdownBrowser();

            Reporter.endTest(Status.Passed);


        } catch (GeneralLeanFtException lfte) {
            try {
                Reporter.reportEvent(currentStepName, lfte.getMessage(), Status.Failed);
                Reporter.endTest(Status.Failed);
                testLogout(browserType);
                shutdownBrowser();
            } catch (ReportException re) {
                re.printStackTrace();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Object[] parametersForTest3PurchaseProduct() {
        return getParameters();
    }

    public Object[] parametersForTest2Navigation() {
        return getParameters();
    }

    public Object[] parametersForTest1Registrater() {
        return getParameters();
    }

    public Object[] getParameters() {
        multiBrowserFlag = System.getProperty("multi-browser");

        if (multiBrowserFlag == null) {
            multiBrowserFlag = "false";
        }

        if (multiBrowserFlag.equals("true"))
        {
            return new Object[]{
                    BrowserType.INTERNET_EXPLORER,
                    BrowserType.CHROME };
//					BrowserType.FIREFOX };
        }
        else
        {
            return new Object[]{
                    BrowserType.CHROME };
        }

    }
}
