*** Settings ***
Resource				base.robot

Test Setup				Cria sessão
Test Teardown			Encerra sessão

** Variables ***
${check_thor}			id:thor
${check_iron} 			css:input[value='iron-man']
${check_panther}		xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Verifica opção com ID
		Go To							${url}/checkboxes
		Select Checkbox					${check_thor}
		Checkbox Should Be Selected		${check_thor}

Verifica opção com CSS Selector
		[tags]							ironman
		Go To							${url}/checkboxes
		Select Checkbox					${check_iron}
		Checkbox Should Be Selected		${check_iron}

Verifica opção com XPath
		[tags]							blackpanther
		Go To							${url}/checkboxes
		Select Checkbox					${check_panther}
		Checkbox Should Be Selected		${check_panther}