*** Settings ***
Library		SeleniumLibrary

** Variables ***
${url}		https://training-wheels-protocol.herokuapp.com

*** Keywords ***
Nova sessão
	Open Browser					${url}				chrome

Encerra sessão
	Sleep 							2
	Capture Page Screenshot
	Close Browser