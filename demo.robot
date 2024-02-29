*** Settings ***
Library    Collections
Library    SeleniumLibrary

*** Test Cases ***
Login With Valid Credentials
    [Documentation]  Tests the login functionality with valid credentials.
    [Tags]  login
    Open Browser   ${URL}  chrome
    Maximize Browser Window
    Input Text  xpath://input[@type='text']  ${CRD}
    # ${password}    Collections.Get Dictionary Values  &{LOGINDATA} password
    Input Text  xpath://input[@type='password']  ${password}
    Click Element   xpath://div[@class='login-on-prem-login-button'] 
    Sleep  time_= 5
    Click Element  xpath://div[@class='user-img']//following::img[@alt='user']
    Sleep  time_= 5
    Click Element  xpath://*[text()='Logout']

*** Variables ***
${URL}  http://192.168.1.129/bhub-qa/ 
${CRD}  2201-00187
&{LOGINDATA}   password=BB1234  
${password}  BB1234

