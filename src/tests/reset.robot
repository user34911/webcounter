*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Input Text  value  0
    Click Button  aseta
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa