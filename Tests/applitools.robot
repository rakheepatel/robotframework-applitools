*** Settings ***
Documentation  Sample test to demonstrate how to use Applitools with Robot Framework
Resource  ../Resources/common.robot
Suite Setup  Start Test
Suite Teardown  End Test
# robot -d Results Tests/applitools.robot  #Copy and paste this command into the terminal to run your test

*** Test Cases ***
Unimaginative test name
    Run your RF tests
    Take screenshots

Ignore region test
    Set ignore region from test

Region screenshot test
    Take screenshot of specific region