*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    firefox
${url}        https://the-internet.herokuapp.com/
${acceptxpath1}    xpath://a[@href='/login']
${acceptxpath2}    xpath://input[@name='username']
${acceptxpath3}    xpath://input[@name='password']
${login}           xpath://button[@class='radius'] 

*** Test cases ***
TestLogin
    Open Browser     ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${acceptxpath1} 
    Input Text    ${acceptxpath2}    tomsmith
    Input Text    ${acceptxpath3}    SuperSecretPassword! 
    Click Element    ${login}  
    Close Browser  
