*** Settings ***
Documentation     testando lacos(for) com robot
Library    Collections

*** Test Cases ***
contando ate 9
    Contar    1    9

*** Keywords ***
Contar
    [Arguments]    ${num_inicial}    ${num_final}
	FOR    ${count}     IN RANGE      ${num_inicial}    ${num_final}
		Log To Console    ${\n}Estou no numero: ${count}
	END
