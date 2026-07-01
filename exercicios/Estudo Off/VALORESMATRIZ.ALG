Algoritmo "ValoresMatriz"

Var
  m: vetor [1..4,1..4] de inteiro
  maimed4l: vetor [1..4] de inteiro
  l, c, sDP, pDL, mai3C,somMatr: inteiro
  medMatr: real
Inicio
sDP <- 0
pDL <- 1
somMatr <- 0
mai3c <- 0
  para l de 1 ate 4 faca
    para c de 1 ate 4 faca
      Escreva ("Digite o valor da posicao [", l,",",c, "]: ")
      leia (m[l,c])
        se (l = c) entao
          sDp <- sDP + m[l,c]
        fimse
    fimpara
  fimpara
  
  para l de 1 ate 4 faca
    para c de 1 ate 4 faca
      escreva (m[l,c]:4)
    fimpara
      escreval ()
  fimpara
  
  para c de 1 ate 4 faca
    pDL <- pDL * m[2,c]
  fimpara
  
  para l de 1 ate 4 faca
    se (m[l,3] > mai3c) entao
      mai3c <- m[l,3]
    fimse
  fimpara
  
  para l de 1 ate 4 faca
    para c de 1 ate 4 faca
      somMatr <- somMatr + m[l,c]
    fimpara
  fimpara
  
  medMatr <- somMatr / 16
  
  escreval ("A soma dos valores da diagonal principal e ", sDP)
  escreval ("O produtos dos valores da segunda linha e", pDL)
  escreval ("O maior valor da terceira coluna e ", mai3C)
  escreval ("A soma de todos valores da Matris e ", somMatr)
  escreval ("A media da matriz e ", medMatr)
  escreva ("Os numeros maiores que a media da 4 linha sao: "
    para c de 1 ate 4 faca
    se (m[4,c] > medMatr) entao
      maimed4l[c] <- m[4,c]
      escreva ("[", maimed4l[c],"}")
    fimse
  fimpara
fimalgoritmo