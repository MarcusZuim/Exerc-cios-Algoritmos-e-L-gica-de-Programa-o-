Algoritmo "Campeonato de futebol"

var
   times: vetor[1..4] de caractere
   vencedoresSemi: vetor[1..2] de caractere
   i, posSorteada, v, golsM, golsV, golsM2, golsV2: inteiro
   aux, campeao: caractere

Inicio
   escreval ("-----------------------------------")
   escreval ("            SEMIFINAL              ")
   escreval ("-----------------------------------")

   Para i de 1 ate 4 faca
      escreval ("Digite o nome dos clubes: ")
      leia (times[i])
   fimpara

   aleatorio 1, 4
   para i de 1 ate 4 faca
      leia (posSorteada)
      aux <- times[i]
      times[i] <- times[posSorteada]
      times[posSorteada] <- aux
   fimpara
   aleatorio off

   limpatela

   aleatorio 0, 10
   leia (golsM)
   leia (golsV)
   leia (golsM2)
   leia (golsV2)
   aleatorio off

   limpatela
   escreval ("CONFRONTOS DA SEMIFINAL")
   escreval ("---------------------------------------------------")

   escreval (times[1]:15, " [", golsM, "] x [", golsV, "] ", times[2])
   se (golsM > golsV) entao
      vencedoresSemi[1] <- times[1]
   senao
      vencedoresSemi[1] <- times[2]
   fimse

   escreval (times[3]:15, " [", golsM2, "] x [", golsV2, "] ", times[4])
   se (golsM2 > golsV2) entao
      vencedoresSemi[2] <- times[3]
   senao
      vencedoresSemi[2] <- times[4]
   fimse

   escreval ("---------------------------------------------------")
   escreval ("PRESIONE ENTER PARA IR PARA A GRANDE FINAL...")
   leia (aux)
   limpatela

   aleatorio 0, 6
   leia (golsM)
   leia (golsV)
   aleatorio off

   limpatela
   escreval ("===================================================")
   escreval ("                    GRANDE FINAL                   ")
   escreval ("===================================================")
   escreval (vencedoresSemi[1]:15, " [", golsM2, "] x [", golsV2, "] ", vencedoresSemi[2])

   se (golsM2 > golsV2) entao
      campeao <- vencedoresSemi[1]
   senao
      campeao <- vencedoresSemi[2]
   fimse

   escreval ("===================================================")
   escreval ("O GRANDE CAMPEÃO É O: ", maiusc(campeao), " !!! ")
   escreval ("===================================================")

Fimalgoritmo