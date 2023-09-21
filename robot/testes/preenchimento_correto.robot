*** Settings ***
Resource     ../resources/main.robot

*** Test Cases ***
Verificar se ao preencher corretamente o formulário os dados são inseridos corretamente na lista e se um novo card é criado no time esperado
     Dado que preencha os campos do formulário
     E clique no botão criar card
     Então identificar o card no time esperado

Verificar se é possivel criar mais de um card se preenchermos os campos corretamente
     Dado que preencha os campos do formulário
     E clique no botão criar card
     Então criar card 3 card no time de Programação

Verificar se é possível criar um card para cada time se preenchermos os campos corretamente
     Dado que preencha os campos do formulário
     Então criar card e identificar 1 card em cada time disponível

Abrir navegador e acessar o site do organo
    Open Browser    url=http://localhost:3000/    browser=Chrome