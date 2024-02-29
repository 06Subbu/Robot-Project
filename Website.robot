*** Settings ***
Library          SeleniumLibrary


Suite Setup  Log  message=I am inside Test Suite Setup
Suite Teardown  Log  message=I am inside Test Suite Teardown
Test Setup  Log  message=I am inside Test Setup
Test Teardown  Log  message=I am inside Test Teardown

Default Tags  Sanity

*** Test Cases ***
MyFirstTestcase
    [Tags]     Smoke
     Log       Hello world

MySecondTestcase
    [Tags]   Regression
     Log      I am inside in the 2nd test
      

My Third Testcase
    [Tags]   Monkey
     Log     I am inside in the 3rd test 
        

# Login With Valid Credentials
#     [Documentation]  Tests the login functionality with valid credentials.
#     [Tags]  login
#     Open Browser   ${URL}  chrome
#     Maximize Browser Window
#     My_KW
#     Click Element   xpath://div[@class='login-on-prem-login-button'] 
#     Sleep  time_= 5
#     Click Element  xpath://div[@class='user-img']//following::img[@alt='user']
#     Sleep  time_= 5
#     Click Element  xpath://*[text()='Logout']


*** Variables ***
${URL}  http://192.168.1.129/bhub-qa/ 
@{CRD}  2201-00187
@{CRDPASS}  BB1234

*** Keywords ***
My_KW
    Input Text  xpath://input[@type='text']  @{CRD}
    Input Text  xpath://input[@type='password']  @{CRDPASS} 









