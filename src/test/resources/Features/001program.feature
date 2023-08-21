
Feature: Program Module
 
@01Post_Program
   Scenario: User creates a post request with Valid Endpoint
   Given User Creates Request for the LMS API Endpoint
   When User gives the post request with both mandatory and additional fields
   Then User receives status code 201 Created Succesfully with the response body
    
@02GET_AllPrograms
   Scenario: User able to retrive all Programs with a Valid LMS API Endpoint
   Given User Creates Request for the LMS API Endpoint
   When User sends the HTTPS request to get all Programs
   Then User receives the status code 200 OK with the response body
   
@03GET_Program_with_validProgramID
   Scenario: User able to retrive Program with a Valid ProgramID and LMS API Endpoint
   Given User Creates Request for the LMS API Endpoint
   When User sends the HTTPS request with program to get Valid ProgramID.
   Then User receives the status code 200 OK with the response body
   
@04PutRequest_updateProgrambyValidID
  Scenario: User able to update a program with valid programID and mandatory request body
    Given User creates request for the LMS API endpoint
    When User sends HTTPS Request with mandatory and additional fields for Program with valid program ID
    Then User receives 200 ok Status code with response body for update
    
@03DdeleteRequest_DeletebyProgramName
  Scenario: User able to delete a program with valid program name
    Given User creates request for the LMS API endpoint
    When User sends HTTPS Request for LMS API endpoint and valid program name
    Then User receives 200 ok Status code with response body for update
@0GET_Program_with_InvalidProgramID
   Scenario: User able to retrive Program with a InValid ProgramID and LMS API Endpoint
   Given User Creates Request for the LMS API Endpoint
   When User sends the HTTPS request with program to get Invalid ProgramID.
   Then User receives the status code 404 Not Found with message and boolean success details.