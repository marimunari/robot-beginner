*** Settings ***
Library		SeleniumLibrary

** Variables ***
${url}		https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Open session
		Open Browser									${url}							chrome

Close session
		Sleep 												2
		Capture Page Screenshot
		Close Browser