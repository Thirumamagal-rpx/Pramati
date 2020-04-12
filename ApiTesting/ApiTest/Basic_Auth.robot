# Basic Authentication - Username and password

*** Settings ***
Library    requests   
Library    RequestsLibrary   
Library    Collections  


*** Variables ***
${base_url}    https://restapi.demoqa.com
   

*** Test Cases ***
BasicAuthTest
    ${basic_auth} =     Create List    ToolsQA    TestPassword
    Create Session    mysession   ${base_url}   auth=${basic_auth}     verify=True
    ${response} =    Get Request    mysession     /authentication/CheckForAuthentication 
    # Log To Console      ${response.status_code}
    # Log To Console      ${response.headers}
    
    ${contentType}=    Get From Dictionary    ${response.headers}    Content-Encoding
    should contain    ${contentType}    gzip  

    Log To Console      ${response.content}   
    
    # Log To Console      ${response.cookies}    
    
     
    
