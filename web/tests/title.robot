*** Settings ***
Resource			base.robot

Test Setup			Cria sessão
Test Teardown		Encerra sessão

*** Test Cases ***
Should see page title
	Title Should Be		Training Wheels Protocol