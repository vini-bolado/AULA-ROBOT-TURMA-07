*** variables ***

${SITE}             http://www.saucedemo.com
${NAVEGADOR}        Chrome
${CAMPO_USUARIO}    id=user-name
${CAMPO_PASSWORD}   id=password 
${BOTAO_LOGIN}      id=login-button
${USUARIO}          standard_user
${SENHA}            secret_sauce
${BACKPACK}         id=add-to-cart-sauce-labs-backpack
${CARRINHO}         class=shopping_cart_link
${CHECKOUT}         id=checkout
${CHECKOUT_USER}    id=first-name
${CHECKOUT_SENHA}   id=last-name
${CHECKOUT_POSTAL}  id=postal-code
${CEP}              12345678
${CONTINUAR}        id=continue
${FINALIZAR}        id=finish

*** keywords ***

Abrir o site da loja Sauce demo

    Open Browser     ${SITE}             ${NAVEGADOR}
    Maximize Browser Window

Fazer login

    Input Text              ${CAMPO_USUARIO}    ${USUARIO}  
    Input text              ${CAMPO_PASSWORD}   ${SENHA}
    Click Button            ${BOTAO_LOGIN}
    Page Should Contain     Products

Iniciar compra

    Click Button            ${BACKPACK}
    Click Link              ${CARRINHO}
    Click Button            ${CHECKOUT}

Prencher dados do usuario

    Input Text              ${CHECKOUT_USER}    ${USUARIO}
    Input Text              ${CHECKOUT_SENHA}   ${SENHA}
    Input Text              ${CHECKOUT_POSTAL}  ${CEP}  
    Click Button            ${CONTINUAR}


Finalizar Compra

    Click Button            ${FINALIZAR}
    Page Should Contain     THANK YOU FOR YOUR ORDER
    Close Browser
    
