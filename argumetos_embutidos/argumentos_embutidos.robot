*** Settings ***
Documentation     testando argumentos e retornos
Library    Collections

*** Test Cases ***
Meu teste de soma
    ${resultado_da_soma}    somar dois numeros "6" e "2"
    Log    ${resultado_da_soma}
    ${resultado_da_soma}    somar dois numeros "${resultado_da_soma}" e "4"
    Log    ${resultado_da_soma}

*** Keywords ***
somar dois numeros "${primeiro_num}" e "${segundo_num}"
    ${resultado_da_expressao}    Evaluate    ${primeiro_num}+${segundo_num}
    Log To Console    ${\n}O resultado é: ${resultado_da_expressao}
    [Return]    ${resultado_da_expressao}
