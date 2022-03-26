*** Settings ***
Resource				base.robot

Test Setup			Open session
Test Teardown		Close session

*** Test Cases ***
Should see page title
		Title Should Be		Training Wheels Protocol