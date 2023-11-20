Feature: Testando API Pokemon.

Background: Executa antes de cada teste.
    * def url_base = 'https://pokeapi.co/api/v2/'

Scenario: Testando retorno.
    Given url 'https://pokeapi.co/api/v2/pokemon/pikachu'
    When method get
    Then status 200

Scenario: Testando retorno.
    Given url 'https://pokeapi.co/api/v2/pokemon/chocolate'
    When method get
    Then status 404

Scenario: Testando retorno pikachu e verificando o JSON.
    Given url url_base
    And path 'pokemon/pikachu'
    When method get
    Then status 200
    And match response.name == "pikachu"
    And match response.id == 25

Scenario: Testando retorno pokemon Rede entrando em um dos elementos de array de idiomas e testando retorno JSON.
    Given url url_base
    And path 'version/1'
    When method get
    Then status 200
    And def idioma = $.names[5].language.url
    And print idioma
    And url idioma
    When method get
    Then status 200
    And match response.name == "es"
    And match response.id == 7

Scenario: Testando retorno caterpie e verificando o JSON.
    Given url url_base
    And path 'pokemon/caterpie'
    When method get
    Then status 200
    And match response.name == "caterpie"
    And match response.id == 10

Scenario: Testando retorno charmander e verificando o JSON.
    Given url url_base
    And path 'pokemon/charmander'
    When method get
    Then status 200
    And match response.name == "charmander"
    And match response.id == 4