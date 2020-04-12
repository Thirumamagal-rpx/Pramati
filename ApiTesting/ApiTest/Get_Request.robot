*** Settings ***
Library    requests   
Library    RequestsLibrary     


*** Variables ***
${base_url}    https://restapi.demoqa.com/utilities
${City}        Chennai    

*** Test Cases ***
Get Weather_info
    Create Session    mysession   ${base_url}    verify=True
    ${Response} =    Get Request    mysession     /utilities/weather/city/${City}  
    Log To Console      ${Response.status_code}
    Log To Console      ${Response.headers}
    Log To Console      ${Response.content}    