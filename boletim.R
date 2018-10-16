#Exercicio:
#Criar um algoritmo em R que faça:
#
#1 - Cadastro de alunos (nome, e-mail, etc..., notas de provas)
#Aqui você precisa aplicar o que vimos em vetores, a função scan() deverá ser usada. Para saber se o aluno foi aprovado, basta criar um vetor "nota média" que é o calculo de outros vetores (notas), então se neste vetor média o indivíduo tiver nota abaixo de 7 (por exemplo) estará "reprovado", caso contrário aprovado (neste caso você precisa usar o if() para fazer o decision making).
#
#2 - Mostra os dados dos alunos cadastrados informando também os aprovados e reprovados.
#
#Com os vetores criados, você monta um DataFrame e depois mostrar ele na tela.

#Vetor de nomes dos alunos
nomes_aluno<-c("João", "Maria", "José")

#Vetor de dados dos alunos
email_aluno<-c("joao@gmail.com","maria@gmail.com","jose@gmail.com")

calcula_nota<-function(notas){
  #Input automático de 2 de notas aleatorias de 1 a 10 dos alunos
  notas_joao<-sample(1:10,2)
  notas_maria<-sample(1:10,2)
  notas_jose<-sample(1:10,2)
  
  #Calcula media das notas
  nota_media_maria<-(mean(notas_maria))
  nota_media_joao<-(mean(notas_joao))
  nota_media_jose<-(mean(notas_jose))
  
  #Vetor que recebe as medias das notas
  notas<-c(nota_media_joao,nota_media_maria,nota_media_jose)
  
  #Cria vetor strings de situação final do aluno
  situacao<-as.character()
  
  #Cria um dataframe que armazena o boletim
  boletim<-data.frame(Nome=nomes_aluno, Email=email_aluno, Notas=notas)
  
  
  #Loop para percorrer o vetor de notas e passa para a conclusão quem está aprovado e reprovado
  for(i in 1:length(notas)){
    if(notas[i] >= 7.00){
      situacao[i]<-"Aprovado"
    }else{
      situacao[i]<-"Reprovado"
    }
  }
  
  #Cria uma nova coluna no boletim que armazena um vetor de string "Aprovado" ou "Reprovado"
  boletim$Situacao<-situacao
  
  #Imprime na tela o boletim
  print(boletim)
  
}

#Chama a função que calcula as notas passando-as como parâmetro
calcula_nota(notas)




