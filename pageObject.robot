*** Settings ***
Documentation     本层主要在ACTION的基础上加上断言，判断等逻辑
Resource          keyword.robot
Library           Selenium2Library

*** Variables ***
${login_url}      http://sso.ggang.cn/SSoOperater/SSoLoginIndex?url=http://www.ggang.cn/

*** Keywords ***
login
    [Arguments]    ${username}    ${password}    ${ecxpetc_message}
    [Documentation]    本层主要在ACTION的基础上加上断言，判断等逻辑
    login_action    ${login_url}    ${username}    ${password}
    Confirm Action
    ${message}    get alert message
    log    ${message}
    should be equal    ${message}    ${ecxpetc_message}
