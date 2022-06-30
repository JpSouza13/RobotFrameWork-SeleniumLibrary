*Settings*

Documentation    Test Login 
Resource         base.robot
Test Setup       Nova Sessão
Test Teardown    Encerra Sessão


*Test Cases*
Login com Sucesso
    Login With                      stark            jarvis!      
    Should Contain Login Alert      Olá, Tony Stark. Você acessou a área logada!    

Senha Invalida
    Login With                      stark            abc123      
    Should Contain Login Alert      Senha é invalida!
    
Usuário nao Existe
    Login With                      Naruto            abc1234      
    Should Contain Login Alert      O usuário informado não está cadastrado!
   
*Keywords*

Login With
    [Arguments]      ${username}                 ${password}
    Go To            ${url}/login
    Input Text       css:input[name=username]    ${username}
    Input Text       css:input[name=password]    ${password}
    Click Element    class:btn-login

Should Contain Login Alert
    [Arguments]       ${expected_message}
    ${message}        Get WebElement         id:flash
    Should Contain    ${message.text}        ${expected_message}