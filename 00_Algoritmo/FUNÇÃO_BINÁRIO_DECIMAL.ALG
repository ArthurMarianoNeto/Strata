Algoritmo "Bin�rio para Decimal"
Var
   X,xvariav : caracter
   xdecim,xmul,xm : Real
   xcomp,ind,xsoma : inteiro
   xret : Logico
//======================================================
FUN��O MAGRO(xvar:caracter): caracter
Var i: inteiro
   x,p: caracter
inicio
   X := ""
   p := ""
   PARA i DE 1 AT� COMPR(xvar) FA�A//retorna inteiro comprimento qtde da string
      p := copia(xvar,i,1)
      SE P <> " " ENT�O
         X := X + P
      FIMSE
   FIMPARA
   RETORNE X
FIMFUN��O
// ================================================
FUN��O E_BINARIO(xvar:caracter):Logico
Var ret: Logico
   x,i,c: Inteiro
   P: Caracter
inicio
   ret := Verdadeiro
   C := Compr(xvar)//Retorna um inteiro contendo o comprimento (quantidade de caracteres) da string
   PARA i DE 1 AT� C FA�A
      p := Copia(xvar,i,1)// Retorna uma string contendo uma c�pia parcial da express�o
      x := CaracPnum(p) //converte um tipo num�rico para caractere
      SE (x > 1) OU (X < 0) ENT�O
         ret := falso
      FIMSE
   FIMPARA
   RETORNE ret
FIMFUN��O
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
   Limpatela
   Escreval(" ")
   Escreva("Digite um numero em bin�rio: ")
   Leia(xvariav)
   xret := E_BINARIO(xvariav)
   SE xret ENT�O
      xvariav := MAGRO(xvariav)
      xcomp := Compr(xvariav)//Retorna um inteiro contendo o comprimento (quantidade de caracteres) da string
      X := ""
      xsoma := 0
      xmul  := 0
      PARA Ind de xcomp AT� 1 PASSO -1 FA�A
         X := Copia(xvariav,Ind,1)// Retorna uma string contendo uma c�pia parcial da express�o
         xdecim := CaracPnum(X) //converte um tipo num�rico para caractere
         xm := xdecim * Exp(2,xmul)
         xsoma:= (xsoma + INT(xm))//transforma numero real em num inteiro
         xmul := xmul + 1
      FIMPARA
   SEN�O
      Escreva("Esse n�mero n�o � bin�rio! - Tecle <enter>")
      Leia(xret)
      Interrompa
   FIMSE
   Escreval(" ")
   Escreval("O resultado �: ",xsoma)
//==================================================
Fimalgoritmo
