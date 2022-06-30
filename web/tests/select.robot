*Settings*

Documentation       Test DropDown
Resource            base.robot
Test Setup          Nova Sessão
Test Teardown       Encerra Sessão


*Test Cases*
Selecionar por Texto
    Go To                            ${url}/dropdown
    Select From List By Label        class:avenger-list               Scott Lang
    ${selected}                      Get Selected List Value          class:avenger-list
    Should Be Equal                  ${selected}                      7
Selecionar por Valor                       
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                       4       
    ${selected}                     Get Selected List Value           id:dropdown           
    Should Be Equal                 ${selected}                       4  
    Sleep                                  3