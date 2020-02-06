<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<applicationModel>
    <name>Application Model</name>
    <className>AdvantageShoppingModel</className>
    <objects>
        <object type="Page" technology="Web">
            <name> Advantage Shopping</name>
            <codeName>AdvantageShoppingPage</codeName>
            <identification/>
            <children>
                <object type="WebElement" technology="Web">
                    <name>CREATE NEW ACCOUNT</name>
                    <codeName>CREATENEWACCOUNTWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">CREATE NEW ACCOUNT</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Username</name>
                    <codeName>UsernameWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="ClassName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Username</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Email</name>
                    <codeName>EmailWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="ClassName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Email</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Password</name>
                    <codeName>PasswordWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="ClassName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Password</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Confirm password</name>
                    <codeName>ConfirmPasswordWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Confirm password</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>I agree to the www.AdvantageOnlineShopping.com Conditions of Use and Privacy Notice</name>
                    <codeName>IAgreeToTheWwwAdvantageOnlineShoppingComConditionsOfUseAndPrivacyNoticeWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">I agree to the www.AdvantageOnlineShopping.com Conditions of Use and Privacy Notice</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>REGISTER</name>
                    <codeName>REGISTERWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                            <property name="InnerText" type="string" isRegExp="false">REGISTER</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Login_WebEdit_Username</name>
                    <codeName>LoginWebEditUsernameEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">text</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>0</index>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>SIGN IN</name>
                    <codeName>SIGNINWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                            <property name="InnerText" type="string" isRegExp="false">SIGN IN</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Login_WebEdit_Password</name>
                    <codeName>LoginWebEditPasswordEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">password</property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Register_WebEdit_Username</name>
                    <codeName>RegisterWebEditUsernameEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">text</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>2</index>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Register_WebEdit_Email</name>
                    <codeName>RegisterWebEditEmailEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">text</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>3</index>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Register_WebEdit_Password</name>
                    <codeName>RegisterWebEditPasswordEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">password</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Register_WebEdit_ConfirmPass</name>
                    <codeName>RegisterWebEditConfirmPassEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">password</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>2</index>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Sign out</name>
                    <codeName>SignOutWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="ClassName" type="string" isRegExp="false">option roboto-medium ng-scope</property>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Sign out</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>SPEAKERS</name>
                    <codeName>SPEAKERSWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false">SPEAKERS</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>TABLETS</name>
                    <codeName>TABLETSWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false">TABLETS</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>LAPTOPS</name>
                    <codeName>LAPTOPSWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false">LAPTOPS</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>HEADPHONES</name>
                    <codeName>HEADPHONESWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false">HEADPHONES</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>SpeakersImg</name>
                    <codeName>SpeakersImgWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="ClassName" type="string" isRegExp="false">SpeaakersImg categoryCell</property>
                            <property name="TagName" type="string" isRegExp="false">DIV</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>BUY NOW</name>
                    <codeName>BUYNOWButton</codeName>
                    <identification>
                        <properties>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="TagName" type="string" isRegExp="false">BUTTON</property>
                            <property name="Name" type="string" isRegExp="false">BUY NOW</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>ADD TO CART</name>
                    <codeName>ADDTOCARTButton</codeName>
                    <identification>
                        <properties>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="TagName" type="string" isRegExp="false">BUTTON</property>
                            <property name="Name" type="string" isRegExp="false">ADD TO CART</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>CHECKOUT ($200.00)</name>
                    <codeName>CHECKOUT20000Button</codeName>
                    <identification>
                        <properties>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="TagName" type="string" isRegExp="false">BUTTON</property>
                            <property name="Name" type="string" isRegExp="false">CHECKOUT ($200.00)</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>CHECKOUT ($200.00)1</name>
                    <codeName>CHECKOUT20000Button1</codeName>
                    <identification>
                        <properties>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="Role" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">BUTTON</property>
                            <property name="Name" type="string" isRegExp="false">CHECKOUT ($200.00)</property>
                        </properties>
                        <index>1</index>
                    </identification>
                </object>
                <object type="Image" technology="Web">
                    <name>Master credit</name>
                    <codeName>MasterCreditImage</codeName>
                    <identification>
                        <properties>
                            <property name="Alt" type="string" isRegExp="false">Master credit</property>
                            <property name="Type" type="enum" isRegExp="false">Normal</property>
                            <property name="TagName" type="string" isRegExp="false">IMG</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Card number</name>
                    <codeName>CardNumberWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Card number</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>CVV number</name>
                    <codeName>CVVNumberWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">CVV number</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Cardholder name</name>
                    <codeName>CardholderNameWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">LABEL</property>
                            <property name="InnerText" type="string" isRegExp="false">Cardholder name</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>CardNumber_WebEdit</name>
                    <codeName>CardNumberWebEditEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">text</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>10</index>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>CWNumber_WebEdit</name>
                    <codeName>CWNumberWebEditEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">text</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>11</index>
                    </identification>
                </object>
                <object type="EditField" technology="Web">
                    <name>Cardholder_WebEdit</name>
                    <codeName>CardholderWebEditEditField</codeName>
                    <identification>
                        <properties>
                            <property name="Type" type="string" isRegExp="false">text</property>
                            <property name="Placeholder" type="string" isRegExp="false"></property>
                            <property name="AccessibilityName" type="string" isRegExp="false"></property>
                            <property name="TagName" type="string" isRegExp="false">INPUT</property>
                            <property name="Name" type="string" isRegExp="false">WebEdit</property>
                        </properties>
                        <index>12</index>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>PAY NOW</name>
                    <codeName>PAYNOWWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="ClassName" type="string" isRegExp="false">sec-sender-a ng-scope</property>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                            <property name="InnerText" type="string" isRegExp="false">PAY NOW</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>Thank you for buying with Advantage</name>
                    <codeName>ThankYouForBuyingWithAdvantageWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false">Thank you for buying with Advantage</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>My account My Orders Sign out </name>
                    <codeName>CHROME_USERICON</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                            <property name="InnerText" type="string" isRegExp="false">My account My Orders Sign out </property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>SpeakersImg1</name>
                    <codeName>SpeakersImgWebElement1</codeName>
                    <identification>
                        <properties>
                            <property name="ClassName" type="string" isRegExp="false">SpeaakersImg categoryCell</property>
                            <property name="TagName" type="string" isRegExp="false">DIV</property>
                            <property name="InnerText" type="string" isRegExp="false">SPEAKERS Shop Now </property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>CHECKOUT  ($200.00)</name>
                    <codeName>CHECKOUT20000Button2</codeName>
                    <identification>
                        <properties>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="TagName" type="string" isRegExp="false">BUTTON</property>
                            <property name="Name" type="string" isRegExp="false">CHECKOUT  ($200.00)</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>AJ99032 My account My Orders Sign out </name>
                    <codeName>AJ99032MyAccountMyOrdersSignOutWebElement</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name> AJ99036 </name>
                    <codeName>AJ99036WebElement1</codeName>
                    <identification>
                        <properties>
                            <property name="ClassName" type="string" isRegExp="false">hi-user containMiniTitle ng-binding</property>
                            <property name="TagName" type="string" isRegExp="false">SPAN</property>
                            <property name="InnerText" type="string" isRegExp="false"> AJ99036 </property>
                        </properties>
                    </identification>
                </object>
                <object type="WebElement" technology="Web">
                    <name>    My account My Orders Sign out </name>
                    <codeName>IE_USERICON</codeName>
                    <identification>
                        <properties>
                            <property name="TagName" type="string" isRegExp="false">A</property>
                            <property name="InnerText" type="string" isRegExp="false">    My account My Orders Sign out </property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="Web">
                    <name>NEXT</name>
                    <codeName>NEXTButton</codeName>
                    <identification>
                        <properties>
                            <property name="ButtonType" type="string" isRegExp="false">submit</property>
                            <property name="TagName" type="string" isRegExp="false">BUTTON</property>
                            <property name="Name" type="string" isRegExp="false">NEXT</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
    </objects>
</applicationModel>
