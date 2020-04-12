*** Settings ***
Library    Collections    
Library    RequestsLibrary     


*** Variables ***
${base_url}    https://restapi.demoqa.com/customer

*** Test Cases ***
Post_CustomerRegisteration
    Create Session    mysess   ${base_url}    verify=True
    ${body}=    Create Dictionary   FirstName=Thiru78973   LastName=Sai273647    UserName=Thai6666689    Password=Sai1    Email=thirumama343321@gmail.com
    ${header}=   Create Dictionary    Content-Type=application/json
    ${response}=    Post Request    mysess     /register      data=${body}     headers=${header}
     
    Log To Console      ${response.status_code}
    Log To Console      ${Response.headers}
    Log To Console      ${response.content} 
        
    #VALIDATIONS
    
    ${status_code} =    Convert To String    ${response.status_code}
    Should Be Equal      ${status_code}   201    

    ${res_body} =     Convert To String     ${response.content} 
    should contain     ${res_body}     OPERATION_SUCCESS
    should contain     ${res_body}     Operation completed successfully
        