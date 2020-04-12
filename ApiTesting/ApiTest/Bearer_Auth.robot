# Bearer Authentication - Token 

*** Settings ***
Library    requests   
Library    RequestsLibrary   
Library    Collections  
Library    OperatingSystem    


*** Variables ***
${base_url}    https://certtransaction.elementexpress.com
${bearer_token}    "Bearer E4F284BFADA11D01A52508ED7B92FFD7EE0905659F5DED06A4B73FC7739B48A287648"
   

*** Test Cases ***
BearerAuthTest
    
    Create Session    mysession   ${base_url}      verify=True
   
    ${headers}     Create Dictionary    Authorization=${bearer_token}        Content-type=text/xml
    ${req_body} =     get file    C:\Users\Thirumamagal\eclipse-workspace\ApiTesting\New Text Document.txt 
    

    ${response} =     Post Request    mysession    /    data= ${req_body}    headers=${headers}
   Log To Console      ${response.status_code}
   Log To Console      ${response.headers}
    
