*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          Welcome     Mariana
    Should Be Equal     ${result}   Olá Mariana. Bem-vinda ao curso básico de Robot Framework!