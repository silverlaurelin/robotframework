*** Settings ***
Documentation  Some file & directory tests
Resource  ../resources/os.robot

*** Variables ***


*** Test Cases ***

Create Some Directories
    [Tags]  OperationSystem
    OS.Create the Base Directory
    OS.Create Directory 1
    OS.Create Directory 1

Create Some Files
    [Tags]  OperationSystem
    OS.Create the First File
    OS.Create the Second File

