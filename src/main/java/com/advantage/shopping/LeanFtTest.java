package com.advantage.shopping;

import com.hp.lft.report.ReportException;
import com.hp.lft.report.Reporter;
import com.hp.lft.sdk.web.BrowserType;
import com.hp.lft.sdk.*;

import java.net.URI;



//public class LeanFtTest extends UnitTestClassBase {
    public class LeanFtTest {


    public LeanFtTest() {
        //Change this constructor to private if you supply your own public constructor
    }



    public static void main(String [] args) {
        // initialize the SDK and report only once per process
        try {
            ModifiableSDKConfiguration config = new ModifiableSDKConfiguration();
            config.setServerAddress(new URI("ws://workstation.modeloffice.org:5095"));
            SDK.init(config);

            Reporter.init();
            System.out.println(Reporter.getReportConfiguration().getReportFolder());
            //put your test code here.
            AOSTest test1 = new AOSTest();
            test1.getParameters();
            test1.prepareTestData();
            System.out.println("Start");
            if(test1.multiBrowserFlag.equals("true"))
            {
                test1.test1Registrater(BrowserType.CHROME);
                test1.test2Navigation(BrowserType.CHROME);
                test1.test3PurchaseProduct(BrowserType.CHROME);

                //test1.usernameVal=test1.usernameVal+"_C";

               //test1.test1Registrater(BrowserType.INTERNET_EXPLORER);
               //test1.test2Navigation(BrowserType.INTERNET_EXPLORER);
               //test1.test3PurchaseProduct(BrowserType.INTERNET_EXPLORER);
            }else
            {
                test1.test1Registrater(BrowserType.CHROME);
                test1.test2Navigation(BrowserType.CHROME);
                test1.test3PurchaseProduct(BrowserType.CHROME);
            }

            //Generate the report and cleanup the SDK usage.
            Reporter.generateReport();
            SDK.cleanup();
            System.out.println("End");
            System.exit(0);
        } catch (Exception e) {
            try {
                Reporter.generateReport();
            } catch (ReportException re) {
                re.printStackTrace();
                System.out.println(re.getMessage());
            }
            System.out.println(e.getMessage());
            SDK.cleanup();
            System.exit(0);
        }
    }
/*
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        instance = new LeanFtTest();

        globalSetup(LeanFtTest.class);
    }

    @AfterClass
    public static void tearDownAfterClass() throws Exception {
        globalTearDown();
    }

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void test() throws GeneralLeanFtException {
        System.out.println("url:xxxxxx");
    }
*/
}