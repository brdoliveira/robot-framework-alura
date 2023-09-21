*** Settings ***
Documentation   Exemplos do uso de IF nos testes
Test Setup      Log To Console    ${\n}
Test Teardown   Log To Console    ${\n}

*** Variables ***
${NUMERO}   ${-1}

*** Test Case ***
Exemplo blocos IF - ELSE IF
    IF  ${NUMERO} > 0
        Mostrar mensagem quando o número for maior que zero
        Log  message=Você está vendo essa mensagem porque o número [${NUMERO}] é maior que zero!!!  console=True
    ELSE IF    ${NUMERO} < 0
        Mostrar mensagem quando o número for menor que zero
        Log  message=Você está vendo essa mensagem porque o número [${NUMERO}] é menor que zero!!!  console=True
    ELSE IF    ${NUMERO} == 0
        Mostrar mensagem quando o número for igual a zero
        Log  message=Você está vendo essa mensagem porque o número [${NUMERO}] é igual a zero!!!  console=True
    END

*** Keywords ***
Mostrar mensagem quando o número for maior que zero
    Log   O número [${NUMERO}] é maior que zero!
    Log To Console    O número [${NUMERO}] é maior que zero!

Mostrar mensagem quando o número for menor que zero
    Log   O número [${NUMERO}] é menor que zero!
    Log To Console    O número [${NUMERO}] é menor que zero!

Mostrar mensagem quando o número for menor ou igual a zero
    Log   O número [${NUMERO}] é menor ou igual a zero!
    Log To Console    O número [${NUMERO}] é menor ou igual a zero!
Mostrar mensagem quando o número for igual a zero
    Log   O número [${NUMERO}] é igual a zero!
    Log To Console    O número [${NUMERO}] é igual a zero!