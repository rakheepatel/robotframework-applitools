*** Settings ***
Documentation  Keywords common to the test suite
Library  Selenium2Library
Library  RobotAppEyes

*** Variables ***
${URL}  http://www.google.com
${API}  #Enter your API key from Applitools here. You should see it in the settings section when you sign in to Applitools
${APPLITOOLS_APP_NAME}  Whatsupp
${APPLITOOLS_BATCH}  Version1
${BROWSER}  chrome
${search_box}  id=lst-ib
${search_btn}  //input[@value="Google Search"]

*** Keywords ***
Start Test
    open browser  ${URL}  ${BROWSER}
    set window size  1200  800  #You don't have to do this, but I like to do this because that way I get consistent results
#    open eyes session  ${URL}  ${APPLITOOLS_APP_NAME}  ${APPLITOOLS_BATCH}  ${API}  browsername=${BROWSER}  matchlevel=LAYOUT   includeEyesLog=True  httpDebugLog=True  #This keyword creates a tunnel to Applitools and sets all the relevant parameters in the Applitools webapp

End Test
#    close eyes session
    close browser

Run your RF tests
    input text  ${search_box}  Cats
    click element  ${search_btn}

Take screenshots
    wait until page contains  Cat
#    check eyes window  Search_Results_Cats  True

Set ignore region from test
    go to  ${URL}
    Run your RF tests
#    check eyes window ignore region by selector  CSS SELECTOR  .sbico-c  Search_btn  #You need to specify the type of selector, and then the value of the selector

Take screenshot of specific region
    go to  ${URL}
    Run your RF tests
#    check eyes region by selector  XPATH  //*[@class="sbico-c"]  Search_btn