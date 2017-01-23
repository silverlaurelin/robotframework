*** Settings ***
Library  OperatingSystem

*** Variables ***
${output_directory} =  Outputs
${directory_1} =  first directory
${directory_2} =  first directory
${file_1} =  first file.txt
${file_2} =  second file.txt
${file_3} =  third file.txt

*** Keywords ***
Create the Base Directory
    Create Directory  ${output_directory}
    Should Exist  ${output_directory}

Create Directory 1
    ${directoy_path} =  Join Path  ${output_directory}  ${directory_1}
    Create Directory  ${directoy_path}
    Should Exist  ${directoy_path}

Create Directory 2
    ${directoy_path} =  Join Path  ${output_directory}  ${directory_2}
    Create Directory  ${directoy_path}
    Should Exist  ${directoy_path}

Create the First File
    ${file_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_1}
    Create File  ${file_path}  This is some text in file 1


Create the Second File
    ${file_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_2}
    Create File  ${file_path}  This is some text in file 2




