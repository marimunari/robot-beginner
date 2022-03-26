*** Settings ***
Resource				base.robot

Test Setup			Open session
Test Teardown		Close session

*** Test Cases ***
Selecting by text and validate by value
		Go To												${url}/dropdown
		Select From List By Label		class:avenger-list					Scott Lang
		${selected}=								Get Selected List Value			class:avenger-list
		Should Be Equal							${selected}									7

Selecting by value and validate by text
		Go To												${url}/dropdown
		Select From List By Value		id:dropdown									6
		${selected}=								Get Selected List Label			id:dropdown
		Should Be Equal							${selected}									Loki