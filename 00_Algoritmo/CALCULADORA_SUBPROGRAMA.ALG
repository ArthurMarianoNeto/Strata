Algoritmo "Calculadora_V1"

// SubPrograma Soma -----------------------------------
procedimento ROTSOMA
var
   soma, num1, num2 : real
inicio
limpatela
   escreval("Rotina de Adi��o!")
   escreval
   escreva("Insira o primeiro termo ")
   leia(num1)
   escreva("Insira o segundo termo ")
   leia(num2)
      soma <- num1+num2
   escreva("O valor equivalente de adi��o � ", soma)
fimprocedimento
// Fim SubPrograma Soma ----------------------------
// -------------------------------------------------
// SubPrograma Soma --------------------------------
procedimento ROTSUBTRACAO
var
   subtracao, num1, num2 : real
inicio
limpatela
   escreval("Rotina de Subtracao!")
   escreval
   escreva("Insira o primeiro termo ")
   leia(num1)
   escreva("Insira o segundo termo ")
   leia(num2)
      subtracao <- num1-num2
   escreva("O valor equivalente de subtra��o � ", subtracao)
fimprocedimento
// Fim SubPrograma Subtra��o -----------------------
// -------------------------------------------------
// SubPrograma Multiplica��o -----------------------
procedimento ROTMULTIPLICACAO
var
   multiplicacao, num1, num2 : real
inicio
limpatela
   escreval("Rotina de Multiplicacao ")
   escreval
   escreva("Insira o primeiro termo ")
   leia(num1)
   escreva("Insira o segundo termo ")
   leia(num2)
      multiplicacao <- num1*num2
   escreva("O valor equivalente de multiplica��o � ", multiplicacao)
fimprocedimento
//------------------------------------------------

Var
   opcao : inteiro
Inicio
   // Principal
   //opcao <- 0
   escreval("--- Calculadora SubPrograma Cabulosa ---")
   escreval
   escreval("[1] - Adi��o")
   escreval("[2] - Subtra��o ")
   escreval("[3] - Multiplica��o ")
   escreval("[4] - Divis�o ")
   escreval("[5] - Fim de programa ")
   escreval
   escreva("---> ")
   leia(opcao)
   se (opcao <> 5) entao
      escolha opcao
      caso 1
         ROTSOMA()
      caso 2
         ROTSUBTRACAO()
      caso 3
         ROTMULTIPLICACAO()
      caso 4
         ROTSOMA()
      outrocaso
         escreval("Op��o inv�lida - Tente novamente")
      fimescolha
   fimse
Fimalgoritmo
