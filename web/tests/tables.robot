*Settings*

Documentation       Test Table 
Resource            base.robot
Test Setup          Nova Sessão
Test Teardown       Encerra Sessão

*Test Cases*
Verifica o Valor ao Informar o Numero da Linha
    Go To                              ${url}/tables
    Table Row Should Contain           id:actors          1         $ 10.000.000	
    

Descobre a Linha pelo Texto Chave e Valida os demais Valores
    Go To               ${url}/tables
    ${target}           Get WebElement           xpath://tr[contains(., '@chadwickboseman')] 
    Log                 ${target.text}
    Log to Console      ${target.text}
    Should Contain      ${target.text}           $ 700.000		
    Should Contain      ${target.text}           Pantera Negra	
