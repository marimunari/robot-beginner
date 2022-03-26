*** Settings ***
Resource				base.robot

Test Setup			Open session
Test Teardown		Close session

** Variables ***
${check_thor}				id:thor
${check_iron} 			css:input[value='iron-man']
${check_panther}		xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Checking option with ID
		Go To													${url}/checkboxes
		Select Checkbox								${check_thor}
		Checkbox Should Be Selected		${check_thor}

Checking option with CSS Selector
		[tags]												ironman
		Go To													${url}/checkboxes
		Select Checkbox								${check_iron}
		Checkbox Should Be Selected		${check_iron}

Checking option with XPath
		[tags]												blackpanther
		Go To													${url}/checkboxes
		Select Checkbox								${check_panther}
		Checkbox Should Be Selected		${check_panther}