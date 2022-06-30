*Settings*

Documentation       Test Checkbox
Resource            base.robot
Test Setup          Nova Sessão
Test Teardown       Encerra Sessão


*Test Cases*
Selecionando Opção com ID   
    Go To                           ${url}/checkboxes
    Select Checkbox                 id:thor
    Checkbox Should Be Selected     id:thor    
    Sleep                           2
    

Selecionando Opção com CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man'] 
    Sleep                           2
       
Selecionando Opção com Xpath
    Go To                           ${url}/checkboxes
    Select Checkbox                 xpath://*[@id='checkboxes']/input[7]
    Checkbox Should Be Selected     xpath://*[@id='checkboxes']/input[7]
    Sleep                           2
    
