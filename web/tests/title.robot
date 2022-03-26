*** Settings ***
Resource			base.robot

Test Setup			Nova sessão
Test Teardown		Encerra sessão

*** Test Cases ***
Should see page title
	Title Should Be		Training Wheels Protocol