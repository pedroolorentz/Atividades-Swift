import Foundation

// 1 – Utilizando a estrutura while, faça um algoritmo que receberá uma quantidade
// indefinida de números e realizará a soma de todos eles, seu algoritmo deverá
// encerrar quando a soma dos números recebidos por ele for maior que 100.

var soma = 0
while soma <= 100 {
    let entradaNumero = Int.random(in: 1...100)
    print("Numero gerado: \(entradaNumero)")
    soma <= entradaNumero
    print(soma)
}

// 2 - Implemente um algoritmo utilizando a estrutura while, que irá receber uma
// quantidade indefinida de palavras, em que cada palavra irá representar uma
// tentativa de “senha de acesso”.

var entradas = [ "entrada1", "entrada2", "novasenha", "sair"]
var entradaInformada = ""

while entradaInformada != "novasenha" && entradaInformada != "sair" {
  entradaInformada = entradas.randomElement()!

  if entradaInformada == "sair" {
    print("Acesso concedido!")
  } else if entradaInformada == "sair" {
    print("Programa encerrado!")
  }
  print(entradaInformada)
}

// 3 - Faça um algoritmo que leia as três notas de 10 alunos de uma turma. Para
// cada aluno, calcule a média ponderada, como segue:
// MP = ( n1*2 + n2*4 + n3*3 ) / 10

var alunoNotas: [Int: ( nota1: Int, nota2: Int, nota3: Int, )] = [:]

for index in 0..<10 {
  let n1 = Int.random(in 0...100)
  let n2 = Int.random(in 0...100)
  let n3 = Int.random(in 0...100)
  alunoNotas[index] = (n1, n2, n3)
}

for index in 0..<10 {
  guard let aluno = alunoNotas[index] else { break }
  let nota1 = aluno.nota1 * 2
  let nota2 = aluno.nota2 * 4
  let nota3 = aluno.nota3 * 3
  let media = (nota1 + nota2 + nota3) / 10
  print("Media ponderada do aluno \(index): \(media)")
}

// 4 - Escreva um algoritmo que leia 50 valores e encontre o maior e o menor deles.
// Mostre o resultado.

var maior = Int.min
var menor = Int.max

for _ in 0..<50 {
  let entrada = Int.random(in: 0...100)
  if entrada > maior {
    maior = entrada
  }
  if entrada < menor {
    menor = entrada
  }
  print(entrada)
}
print("O maior numero e: \(maior)")
print("O menor numero e: \(menor)")

// 5. Escrever um algoritmo que leia 4 valores para uma variável n e, para cada um
// deles, calcule a tabuada de 1 até n. Mostre a tabuada na forma:

for _ in 0..<4 {
  let n = Int.random(in: 1...100)
  print("\nTabuada do \(n)")
  for i in 1...n {
    print("\(n) x \(i) = \(n * i)")
  }
}

// 6. Escrever um algoritmo que calcula e escreve a soma dos números primos entre
// 92 e 1478.

func isPrimo (numero: Int) -> Bool {
  for index in 2..<numero {
    if numero % index == 0 {
      return false
    }
  }
  return numero > 1
}

print(isPrimo(numero: 13))
var somaPrimos2 = 0
for numero in 92...1478 {
  if isPrimo(numero: numero) {
    somaPrimos2 += numero
  }
}
print(somaPrimos2)

// 7. Escreva um algoritmo que leia 10 valores, ao final da leitura, mostre os
// números ordenados em ordem crescente.

var entradaNumeros: [Int] = []

for _ in 0..<10 {
  entradaNumeros.append(Int.random(in: 0...100))
}
entradaNumeros.sort()
print(entradaNumeros)

let filter = entradaNumeros.sorted(by: >)
print(filter)