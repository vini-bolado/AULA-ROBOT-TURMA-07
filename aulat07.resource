*** variables ***

${SITE}             http://www.saucedemo.com
${NAVEGADOR}        Chrome
${CAMPO_USUARIO}    id=user-name
${CAMPO_PASSWORD}   id=password 
${BOTAO_LOGIN}      id=login-button
${USUARIO}          standard_user
${SENHA}            secret_sauce  

*** keywords ***

Abrir o site da loja Sauce demo
    Open Browser     ${SITE}             ${NAVEGADOR}
    Maximize Browser Window

Fazer login
    Input Text              ${CAMPO_USUARIO}    ${USUARIO}  
    Input text              ${CAMPO_PASSWORD}   ${SENHA}
    Click Button            ${BOTAO_LOGIN}
    Page Should Contain     Products

Fazer compra
