***Settings***
Test Teardown   Fechar Navegador
Resource    ../TestsKeywords/JogoViolentoKw.robot

***Test Cases***
Cenário 1: Usuário maior de 18 anos
    Given usuario acessa pagina da steam
    And usuario busca por jogo violento
    When usuario acessa o jogo violento
    And usuario preenche sua idade maior que 18
    Then sistema redireciona para pagina do jogo

Cenário 2: Usuario menor que 18 anos
    Given usuario acessa pagina da steam
    And usuario busca por jogo violento
    When usuario acessa o jogo violento
    And usuario preenche sua idade menor que 18
    Then sistema mostra um alerta de acesso negado

Cenário 3: Usuário com 18 anos
    Given usuario acessa pagina da steam
    And usuario busca por jogo violento
    When usuario acessa o jogo violento
    And usuario preenche sua idade igual a 18
    Then sistema redireciona para pagina do jogo

Cenário 4: Usuário com 17 anos
    Given usuario acessa pagina da steam
    And usuario busca por jogo violento
    When usuario acessa o jogo violento
    And usuario preenche sua idade igual a 17
    Then sistema mostra um alerta de acesso negado

Cenário 5: Usuário com 19 anos
    Given usuario acessa pagina da steam
    And usuario busca por jogo violento
    When usuario acessa o jogo violento
    And usuario preenche sua idade igual a 19
    Then sistema redireciona para pagina do jogo


