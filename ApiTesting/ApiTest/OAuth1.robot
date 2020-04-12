*** Settings ***
Library    ExtendedRequestsLibrary



*** Test Cases ***
Post Request With Client Credentials
    Create Client OAuth2 Session    client    https://token    key    secret    base_url=https://service
    ${var} =    Post Request    client    /endpoint   
    Log    ${var}
    Delete All Sessions

Post Request With Password
    Create Password OAuth2 Session    member    https://token    key    secret    usn    pwd    base_url=https://service
    ${var} =    Post Request    member    /endpoint    
    Log    ${var}
    &{files} =    Create Dictionary    file1=/path/to/a_file.ext    file2=/path/to/another_file.ext
    ${var} =    Post Request    member    /endpoint    files=&{files}
    Log    ${var}
    Delete All Sessions