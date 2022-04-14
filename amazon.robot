*** Settings ***
Resource            base.robot

Test Setup          Nova Sessão
Test Teardown       Encerra Sessão

 

*** Test Cases ***
Login/Logout Test
    Go To                           ${url}/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=brflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&       
    Input Text                      css:input[type=email]           alvaro_batista306@hotmail.com
    Click Element                   class:a-button-input
    Input Text                      css:input[type=password]        prime_pass@1
    Select Checkbox                 rememberMe
    Click Element                   class:a-button-input
    Go To                           ${url}
    ${signout}=                     Get Element Attribute           xpath://a[contains(@id,'nav-item-signout')]      href
    Go To                           ${signout} 
    Sleep                           7s
    
Search Test    
    Go To                           ${url}
    Input Text                      css:input[type=text]            poco x3 pro
    Click Element                   id:nav-search-submit-button
    Go To                           ${url}//Smartphone-Poco-PRO-128gb-6gb/dp/B0919N2P7J/ref=sr_1_5?keywords=poco+x3+pro&qid=1649883231&sprefix=poco+x3%2Caps%2C156&sr=8-5&ufe=app_do%3Aamzn1.fos.25548f35-0de7-44b3-b28e-0f56f3f96147
    Select Checkbox                 id:mbb-offeringID-1
    Click Element                   id:add-to-cart-button
    Go To                           ${url}/gp/cart/view.html?ref_=nav_cart
    Click Element                   class:a-color-link   

  
    





