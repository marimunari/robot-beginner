*** Settings ***
Resource				base.robot

Test Setup			Open session
Test Teardown		Close session

*** Test Cases ***
Verifica o valor ao informar o número da linha
		Go To											${url}/tables
		Table Row Should Contain	id:actors					1					$ 10.000.000

Descobre a linha pelo texto chave e valida os demais valores
		Go To											${url}/tables
		${target}=								Get WebElement							xpath:.//tr[contains(.,'@chadwickboseman')]
		Log												${target.text}
		Log To Console						${target.text}
		Should Contain						${target.text}							$ 700.000
		Should Contain						${target.text}							Pantera Negra