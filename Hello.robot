*** Settings ***
Library    SeleniumLibrary
Resource  resources/resource.robot

*** Variables ***

${URL}  http://www.saucedemo.com
${Browser}  Chrome

#Users
${StandartUser}  standard_user
${LockedOutUser}  locked_out_user
${ProblemUser}  problem_user
${PerformanceGlitchUser}  performance_glitch_user
${ErrorUser}  error_user
${VisualUser}  visual_user

${Password}  secret_sauce

*** Tasks ***
Standart User Test
    [Setup]  Open Browser and Maximize  ${URL}  ${Browser}
    [Teardown]  Close Browser And Log
    Login To Website  ${StandartUser}  ${Password}
    sleep   2
    set screenshot directory  screenshots
    capture page screenshot
    sleep  2
    Logout From Webpage
    sleep  1

Locked Out User Test
    [Setup]  Open Browser and Maximize  ${URL}  ${Browser}
    [Teardown]  Close Browser And Log
    Login To Website  ${LockedOutUser}  ${Password}
    sleep   2
    set screenshot directory  screenshots
    capture page screenshot
    sleep  2
    Logout From Webpage
    sleep  1

Problem User Test
    [Setup]  Open Browser and Maximize  ${URL}  ${Browser}
    [Teardown]  Close Browser And Log
    Login To Website  ${ProblemUser}  ${Password}
    sleep   2
    set screenshot directory  screenshots
    capture page screenshot
    sleep  2
    Logout From Webpage
    sleep  1

Performance Glitch User Test
    [Setup]  Open Browser and Maximize  ${URL}  ${Browser}
    [Teardown]  Close Browser And Log
    Login To Website  ${PerformanceGlitchUser}  ${Password}
    sleep   2
    set screenshot directory  screenshots
    capture page screenshot
    sleep  2
    Logout From Webpage
    sleep  1

Error User Test
    [Setup]  Open Browser and Maximize  ${URL}  ${Browser}
    [Teardown]  Close Browser And Log
    Login To Website  ${ErrorUser}  ${Password}
    sleep   2
    set screenshot directory  screenshots
    capture page screenshot
    sleep  2
    Logout From Webpage
    sleep  1

Visual User Test
    [Setup]  Open Browser and Maximize  ${URL}  ${Browser}
    [Teardown]  Close Browser And Log
    Login To Website  ${VisualUser}  ${Password}
    sleep   2
    set screenshot directory  screenshots
    capture page screenshot
    sleep  2
    Logout From Webpage
    sleep  1