*** Settings ***
Documentation     本层是单纯的业务逻辑层
Library           Selenium2Library

*** Keywords ***
login_action
    [Arguments]    ${base_url}    ${uesrname}    ${password}
    [Documentation]    本层是单纯的业务逻辑层
    open browser    ${base_url}
    input text    id=txtUsrName    ${username}
    input text    xpath=//*[@type="password"]    ${password}
    click button    id=btnLogin
    close browser
