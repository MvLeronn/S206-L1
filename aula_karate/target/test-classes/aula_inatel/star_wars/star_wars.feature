Feature: Testando API StarWars.

Scenario: Testando retorno people/1/.
        Given url 'https://swapi.dev/api/people/1/'
        When method get
        Then status 200

Scenario: Testando retorno people/1/ com informação inválida.
        Given url 'https://swapi.dev/api/people/1/1234'
        When method get
        Then status 404

Scenario: Testando retorno starships/6/ com informação inválida.
        Given url 'https://swapi.dev/api/starships/6/'
        When method get
        Then status 404

Scenario: Testando retorno people/1/ com informação válida.
        Given url 'https://swapi.dev/api/starships/9/'
        When method get
        Then status 200