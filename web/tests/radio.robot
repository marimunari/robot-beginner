*** Settings ***
Resource				base.robot

Test Setup			Open session
Test Teardown		Close session

*** Test Cases ***
Selecting by ID 
		Go To														${url}/radios
		Select Radio Button							movies		cap
		Radio Button Should Be Set To		movies		cap

Selecting by value
		Go To														${url}/radios
		Select Radio Button							movies		guardians
		Radio Button Should Be Set To		movies		guardians