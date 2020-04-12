# Failed


*** Settings ***
  
Library    RequestsLibrary   

           


*** Variables ***
${base_url}    https://www.googleapis.com/auth/adwords
${bearer_token}    "Bearer ya29.a0Ae4lvC2jSutL7DE1I6raWBrj78_bQzeSqOKsCdYWeCW7zdklHuNe4lw-Sc3w4ehcX4tp-4ZVt-55YViYw_8rhR_W_PhzfoTEVAFq0e-kHaima1KtR5ixEGCxYYmq0AlW6Dr3Xu6LgY-28tsM_vMopJDEnTuH5t_A3qA"
   

*** Test Cases ***
OAuth 
  RequestsLibrary.Create Session  hook    ${base_url} verify=${True}    
    ${data}=      Create Dictionary     grant_type=Client credentials     client_id=793690847274-fjba3qb3ilo8oj63n3r6231uh8ufk6gd.apps.googleusercontent.com    client_secret=61wlCzF9UwliktPZfGrvC1he    
    ${headers}=   Create Dictionary      Content-Type=application/x-www-form-urlencoded    
    ${resp}=        RequestsLibrary.Post Request     hook   ${bearer_token}    data= ${data}   headers=${headers}    
    Should Be Equal   ${resp.status_code}     200    
    ${accessToken}=    evaluate    $resp.json().get("access_token")
    Log to Console         ${bearer_token}