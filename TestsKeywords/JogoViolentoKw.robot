**Settings***
Library     SeleniumLibrary
Resource    ../Resources/settings.robot

***Variables***
#Pesquisa
${BarraPesquisa}    id:store_nav_search_term
#Informações do jogo
${NomeJogo}         Cyberpunk 2077
${Jogo}             css:div#search_resultsRows > a:nth-child(1)
#Informações da idade
${NascimentoDia}     id:ageDay
${NascimentoMes}     id:ageMonth
${NascimentoAno}     id:ageYear
${BtnConfirmaIdade}  //span[contains(text(),"Acessar página")]
#Pagina do jogo
${TituloJogo}        id:appHubAppName
#Pagina de erro
${AlertaErro}        //div[contains(text(),"Erro")]


***Keywords***
usuario acessa pagina da steam
    Open Browser    ${Url}  ${Browser}

usuario busca por jogo violento
    Wait Until Element Is Visible   ${BarraPesquisa}
    Click Element   ${BarraPesquisa}
    Input Text      ${BarraPesquisa}    ${NomeJogo}
    Press Keys      ${BarraPesquisa}    ENTER

usuario acessa o jogo violento
    Wait Until Element Is Visible   ${Jogo}
    Click Element   ${Jogo}

usuario preenche sua idade maior que 18
    Wait Until Element Is Visible  ${NascimentoDia}
    Click Element   ${NascimentoDia}
    Press Keys      ${NascimentoDia}    14
    Press Keys      ${NascimentoDia}    ENTER
    Click Element   ${NascimentoMes}    
    Press Keys      ${NascimentoMes}    A
    Press Keys      ${NascimentoMes}    ENTER
    Click Element   ${NascimentoAno}
    Press Keys      ${NascimentoAno}    2000
    Press Keys      ${NascimentoAno}    ENTER
    Click Element   ${BtnConfirmaIdade} 

sistema redireciona para pagina do jogo
    Wait Until Element Is Visible   ${TituloJogo}
    Element Should Contain  ${TituloJogo}  Cyberpunk 2077

usuario preenche sua idade menor que 18
    Wait Until Element Is Visible  ${NascimentoDia}
    Click Element   ${NascimentoDia}
    Press Keys      ${NascimentoDia}    25
    Press Keys      ${NascimentoDia}    ENTER
    Click Element   ${NascimentoMes}    
    Press Keys      ${NascimentoMes}    A
    Press Keys      ${NascimentoMes}    ENTER
    Click Element   ${NascimentoAno}
    Press Keys      ${NascimentoAno}    2005
    Press Keys      ${NascimentoAno}    ENTER
    Click Element   ${BtnConfirmaIdade}

usuario preenche sua idade igual a 18
    Wait Until Element Is Visible  ${NascimentoDia}
    Click Element   ${NascimentoDia}
    Press Keys      ${NascimentoDia}    5
    Press Keys      ${NascimentoDia}    ENTER
    Click Element   ${NascimentoMes}    
    Press Keys      ${NascimentoMes}    JULHO
    Press Keys      ${NascimentoMes}    ENTER
    Click Element   ${NascimentoAno}
    Press Keys      ${NascimentoAno}    2003
    Press Keys      ${NascimentoAno}    ENTER
    Click Element   ${BtnConfirmaIdade}

usuario preenche sua idade igual a 17
    Wait Until Element Is Visible  ${NascimentoDia}
    Click Element   ${NascimentoDia}
    Press Keys      ${NascimentoDia}    5
    Press Keys      ${NascimentoDia}    ENTER
    Click Element   ${NascimentoMes}    
    Press Keys      ${NascimentoMes}    JULHO
    Press Keys      ${NascimentoMes}    ENTER
    Click Element   ${NascimentoAno}
    Press Keys      ${NascimentoAno}    2004
    Press Keys      ${NascimentoAno}    ENTER
    Click Element   ${BtnConfirmaIdade}

usuario preenche sua idade igual a 19
    Wait Until Element Is Visible  ${NascimentoDia}
    Click Element   ${NascimentoDia}
    Press Keys      ${NascimentoDia}    5
    Press Keys      ${NascimentoDia}    ENTER
    Click Element   ${NascimentoMes}    
    Press Keys      ${NascimentoMes}    JULHO
    Press Keys      ${NascimentoMes}    ENTER
    Click Element   ${NascimentoAno}
    Press Keys      ${NascimentoAno}    2002
    Press Keys      ${NascimentoAno}    ENTER
    Click Element   ${BtnConfirmaIdade}

sistema mostra um alerta de acesso negado
    Wait Until Element Is Visible   ${AlertaErro}
    Element Should Contain  ${AlertaErro}  ERRO










