*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}              https://www.amazon.com.br 

*** Keywords ***
Nova Sessão
    Open Browser        ${url}      chrome   
Encerra Sessão
    Capture Page Screenshot
    Close Browser