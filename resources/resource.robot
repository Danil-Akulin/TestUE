*** Settings ***
Library         SeleniumLibrary

*** Keywords ***
Open Browser and Maximize
    [Arguments]  ${UserURL}  ${BrowserName}
    open browser    ${UserURL}  ${BrowserName}
    maximize browser window

Login To Website
    [Arguments]  ${UserName}  ${Password}
    input text  id:user-name  ${UserName}
    input password  xpath:/html/body/div/div/div[2]/div[1]/div/div/form/div[2]/input  ${Password}
    click button  name:login-button
    page should not contain element  class:error-message-container

Close Browser And Log
    close browser

Logout From Webpage
    click button  id:react-burger-menu-btn
    wait until element is enabled  id:react-burger-menu-btn
    click link  id:logout_sidebar_link

