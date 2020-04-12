

# https://cx-oracle.readthedocs.io/en/latest/user_guide/installation.html#installing-cx-oracle-on-windows

*** Settings ***
Library     DatabaseLibrary
Library    OracleDB    

# Suite Setup    Connect To Database       Oracle    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
            
Suite Setup     Connect To Database Using Custom Params    cx_Oracle    ${connection string}
Suite Teardown    Disconnect From Database

*** Variables ***
${connection_string}         user='${user}',password='${password}',dsn='${host}:${port}/${service_name}'           

# ${DBName}            Oracle
# ${DBUser}            system
# ${DBPass}            Qaz@123
# ${DBPort}            1521 
# ${DBHost}            127.0.0.1  


${user}                system
${password}            Qaz@123
${port}                1521
${servicename}         ORCL
${host}                127.0.0.1


*** Test Cases ***
# Create person table
    # ${output}=    DatabaseLibrary.Execute Sql String    Create table person(id integer,first_name varchar(20),last_name varchar(20))
    # Log To Console    ${output}    
    # Should Be Equal As Strings  ${output}      None 
    
# Inserting Data into person table
    # Single Record
    # ${output}=    DatabaseLibrary.Execute Sql String     INSERT into person VALUES (101, ' ZH ', ' TH ')    
    # Log To Console    ${output}    
    # Should Be Equal As Strings  ${output}      None 
    
    # Multiple Record
    # ${output}=      DatabaseLibrary.Execute Sql Script    ./DB/System_person_insertData.sql 
    # Log To Console    ${output}    
    # Should Be Equal As Strings  ${output}      None     

Check if Record present in table
    Check If Exists In Database  SELECT * FROM SYSTEM.PERSON WHERE FIRST_NAME = ' jjjj '
    
Check if Record not present in table
    Check If Not Exists In Database    select ID FROM SYSTEM.PERSON WHERE FIRST_NAME = ' iop '  
    
check if table present in db
    Table Must Exist    person    
    
verify row count is zero
    Row Count Is 0     select ID FROM SYSTEM.PERSON WHERE FIRST_NAME = ' xyz '     
    
Update a record
    ${output}=    DatabaseLibrary.Execute Sql String    Update SYSTEM.PERSON SET FIRST_NAME = ' jjjj ' where ID=103    
    Log To Console    ${output}    
    Should Be Equal As Strings  ${output}      None 
      
Retrieve Records
    @{RetrieveRec}=   query     SELECT * FROM SYSTEM.PERSON
    Log To Console     many@{RetrieveRec}
    
Delete Records from table
     ${output}=    DatabaseLibrary.Execute Sql String    delete from system.person
    Log To Console    ${output}    
    Should Be Equal As Strings  ${output}      None 