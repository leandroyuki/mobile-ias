//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*print(str)
str = "FIAP"
 */
print(str)
var bestOperationSystem: String = "IOS"
bestOperationSystem = "Android"

//fixo
let A = 1

//Character
var gender: Character = "M"

//int
var age: Int = 26

var megasena: Int64 = 89928515120250225
var quina: Int32 = 220022020
var salary:Int16 = 500
UInt16.min
UInt16.max

Int16.min
Int16.max

//Ponto flutuante
var salary2: Double = 501.75

//String
var firstName = "Leandro"
var lastName = "Takahashi"


//concatenacao
//var fullName = firstName + " " + lastName + ", " + age + " anos"

//interpolacao
var completName = "*\(firstName) \(lastName), \(age) anos"

print(age.description)

var _address: String = "Av. Paulista, 1000, 014020-010, São Paulo, SP"
print(_address)

var address = ("Av. Paulista", 1000,"014020-010", "Sáo Paulo", "SP")
print("Eu moro no numero \(address.1)")

//tupla nomeada
var address2: (street: String, number: Int, zipCode: String, city: String, state:String) = ("Av. Paulista", 1000,"014020-010", "Sáo Paulo", "SP")
print(address2)

print("Eu moro no estado \(address2.state)")

var state = address2.state
var streetNumber = address2.number
var zipCode = address2.zipCode

//or
var (street, streetNumber2, zip, city, state2) = address2 //decompor uma tupla

var (_, streetNumber3, _, _, state4) = address2

//-----------------------------------------
//Optionals
//var cnh:String --> nao existe!!!
// var cnh:String = XXXXX --> inicializacao padrao

//Ou variavel optional de string --> pode ou náo ter valor!!! ficando NIL
var cnh: String?
cnh = "484151151"
// tecnica de desembrulhar o item do optional
//print("A minha cnh eh \(cnh)")
//primeiro jeito -- Tecnica vida loka!!!
print("A minha cnh eh \(cnh!)") //Se for NIL o APP crasha!!!!!
//Segundo jeito
//Tecnica correta: Optional Biding
if let myCNH = cnh {
    print("A minha cnh eh \(myCNH)")
}

if cnh != nil {
    print("A minha cnh eh \(cnh!)")
}

//cnh = nil
//Tecnica correta: Optional Biding 2
//guard let myCNH = cnh else{return}
//?? : NIL COALESCING OPERATOR (OPERADOR DE COALESCÊNCIA NULA)
let myCNH = cnh ?? "nenhuma" // CASO O VALOR NAO SEJA NUL, ATRIBUI DEFAULT O VALOR "nenhuma

var cpf: String!
cpf = "5451515151"
print(cpf)

var myName: String!
//print(myName.uppercased())
var oq: String?
oq = "Alguma coisa       "

print(oq?.uppercased()) // MANEIRA SEGURA DE CHAMAR O METODO QUE PODE SER NULA --> OPTIONAL CHAINNING


var dog1 = "Thor"
var dog2 = "sid"
var poo = "cocô"
//🤡 control + command + space
var sentece = "O \(dog1) e o \(dog2) que fazem \(poo)"

//Colecoes
//Array
var names: [String] = []
var shoppingList = ["arroz", "feijao", "batata"]

print("minha lista de compras tem \(shoppingList.count) elementos")

if shoppingList.isEmpty {
    print("minha lista de compras esta vazia")
}

shoppingList.append("Beterraba")

shoppingList += ["maca", "uva"]

let feijao = shoppingList[1]
//remover um elemento do array
shoppingList.remove(at: 3)

shoppingList.contains("arroz")
//Bool: booleano
shoppingList.index(of: "uva")

var index = shoppingList.index(of: "arroz")

//Dicionario
var states: [String:String] = [
    "SP": "Sao Paulo",
    "RJ": "Rio de Janeiro",
    "MG": "Minas gerais",
    "AC": "Acre"
]
var sp = states["SP"]
print("O estado SP eh o \(states["SP"])")

states["PR"] = "parana" //Adicionar no dicionario
states["MG"] = nil //remover do dicionario

//Dicionario vazio
var empty:  [Int: String] = [:]

//Operadores
// +, -, /, *, ??, ! (negar), (desembrulhar)!, +=, -=, *=,

// ACAO QUE EH EXECUTADA EM OPERANDOS EX: Unario --> ! DOIS OPERADORES: Binario -,+, / E TERNARIOS:

var grade = 7.5
var result = grade >= 7.0 ? "aprovado":"reprovado"
print(result)

// CRIAR NOSSO PROPRIOS OPERADORES -- PREFIX AND POSTFIX
var sucess = true //false
!sucess
!true

// >-
prefix operator >-
prefix func >- (rhs: Int) -> Int {
    return rhs*rhs
}
print (>-9)






































