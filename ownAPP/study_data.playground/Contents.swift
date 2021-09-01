


import UIKit
var array11235:[Int] = []

var value:Int = 0
var curentValue:Int = 6
for _ in 1...20{
    
    if let v:Int = array11235.last{
        value = v
    }
    array11235.append(curentValue)
    
    curentValue = curentValue/2 * -1 + value
    
}
print(array11235)

var array136:[Int] = []
value = 0
curentValue = 6
for _ in 1...20{
    
    if let v:Int = array136.last{
        value = v
    }
    array136.append(curentValue)
    
    curentValue = curentValue/2 * -1 + value + 1
    
}
print(array136)

//getTwoMinValues(array11235: array11235)

func getTwoMinValues(_ array:[Int]){
   
    //array11235 = array.shuffled()
    
    var vMin1:Int?
    var vMin2:Int?
   
    for elem in array11235{
        
        //print("\(vMin1 ?? 42) ____ \(vMin2 ?? 42)")
        guard vMin1 != nil else {
            vMin1 = elem
            continue}
        
        if let v:Int = vMin1{
                if v > elem {
                    vMin2 = v
                    vMin1 = elem
                    continue
                }else if v == elem {
                    continue
                }
                
            }
        
        guard vMin2 != nil else {
            vMin2 = elem
            continue}
        
        if let v:Int = vMin2{
            if v > elem{
            vMin2 = elem
        }
        
            
        
        }
    }
    //print("\(vMin1) ______ \(vMin2)")
        //print("\(vMin1) ____ \(vMin2)")
}

    getTwoMinValues(array11235)
    getTwoMinValues(array136)

func mergeArrayes(_ array11235:[Int], _ array136:[Int])->[Int]{
    
    print(array11235)
    print(array136)
    
    
    var i11235 = 0
    var i136 = 0
    var result:[Int] = []
    
    while i136 < array136.count && i11235 < array11235.count {
        
        if i136 >= array136.count{
            result.append(array11235[i11235])
            i11235 += 1
            continue
        }
        
        if i11235 >= array11235.count{
            result.append(array136[i136])
            i11235 += 1
            continue
        }
        
        if array11235[i11235] > array136[i136]{
            result.append(array136[i136])
            i136 += 1
        }else if array11235[i11235] == array136[i136]{
            result.append(array11235[i11235])
            result.append(array136[i136])
            i136 += 1
            i11235 += 1
        }else{
            result.append(array11235[i11235])
            i11235 += 1
        }
    }
    print(result)
    return result
}

let arrayAll = mergeArrayes(array11235, array136)

func differentValues1(_ array:[Int]){
   
    //let newArray = array.shuffled()
    let newArray = array
    
    for elem in array{
        if newArray.firstIndex(of: elem) == newArray.lastIndex(of: elem){
            //print(elem)
        }
    }
}

differentValues1(arrayAll)

func differentValues(_ array:[Int]){
    print("ok")
    let newArray = array.shuffled()
    //let newArray = array
    
    var foundElems:[Int] = []
    
    for i in 0...newArray.count - 1 {
       
        var isFound = false
        curentValue = newArray[i]
        
        if let _:Int = foundElems.firstIndex(of: curentValue){
            continue
        }
        //print( "iii \(curentValue)")
        var i2 = i
        //print(i2)
        while i2 < newArray.count - 1 {
            i2 += 1
            //print("i2 \(i2)")
            if curentValue == newArray[i2]{
                isFound = true
                foundElems.append(curentValue)
                //print("ff \(curentValue)")
                break
                
            }
            
        }
        
        if !isFound{
           
            print(curentValue)
            break
        }
    }
 
    
    
}

differentValues(arrayAll)

print(arrayAll)
var result:[Int] = []
var negativeValues:Int = 0
for elem in arrayAll{
    if elem > 0{
        result.append(elem)
    }else{
        result.insert(elem, at: negativeValues)
        negativeValues += 1
    }
}
print(result)

//
//var name = "pizza"
//
//let closure = {
//  print("I love \(name)")
//}
//
//name = "cola"
//
//closure()
//
//
//
//let igg = 3
//switch igg {
//case 1:
//    print("Number was 1")
//case 2:
//    print("Number was 2")
//case 3:
//    print("Number was 3")
//default:
//    print(32)
//}
//
//
//
//let i = Array(1...99)
//let fa = [0...100]
//print(fa)
//
//for a in i{
//    print(a)
//    break
//}
//
//
//
////
////  book_data.swift
////  ownAPP
////
////  Created by Ihor Shovkoplias on 28.07.2021.
////
//
//import Foundation
//import UIKit
//// типы данных Data types
//var a:Int = 0
//print("\(a)")
//let b:Double = 70
//print(b)
//var c:String = "value"
//print(c)
//
//let k = c + "\(a) и еще \(b)"
//
//print(k)
//let s = Double(a) + b
//
//print(s)
//
//var array1:[Int] = [43 ]
//array1.append(42)
//
//let array2 = [43,35]
//
////array1 = array1 + array2
//print(array1 + array2)
//
//for elem in array2{
//    guard array1.count > 0 else {
//        print("array1 is empty")
//        break
//    }
//
//    guard !array1.isEmpty else {
//        print("array1 is empty")
//        break
//    }
//
//    if array1.firstIndex(of: elem) == nil {
//        print("found value \(elem)")
//    }
//}
////let array3 = array2
//
//// сет (набор без структуры, массив без индексов и упорядочивания)
//
//var Array4 = Array<Int>()
//
//Array4.append(355)
//
//print(Array4[0])
//
//var set1 = Set<Int>()
//
//set1.insert(32)
//set1.insert(32)
//
//var set2:Set = [1,2,3,4,5,6,7]
//
//set1.intersection(set2)   //пересечение
//set2.subtract(set1)         //
//var setA = set1.union(set2)
//
//print(setA)
//
//
//// dictinary - Подобие перечислений
//
//var d1:[AnyHashable:Int] = [:]
//d1 = [false:23 , "true":70]
////let dElement = dq
//print(Int(d1[false] ?? 0))
//
////Картежи аналог перечисления
//
//var human = (age:32, name:"Ihor", 1.80)
//
//print(human.age)
//print(human.name)
//print(human.2)
//
//enum names:String{
//    case ihor = "Ihor"
//    case masha = "Masha"
//
//}
//
//var name:names = .ihor
//switch name{
//case .ihor: print(name.rawValue)
//case .masha: print(name.rawValue)
//    print("nothing")
//}
//
//func functionPlus(_ a:Int, _ b:Int){
//    print(a+b)
//}
//
//func  functinMinus(a:Int, two b:Int)->Int{
//
//    return a-b
//}
//
//print(functinMinus(a: 5, two: 2))
//
//functionPlus(3,5)
//
//// Протоколы
//protocol ProtocolHuman{
//    var profession:Proffesions {get}
//
//
//}
//
///// Классы
//class ClassHuman{
//    var name:String?
//    let dateOfBirth:Int?
//
//    init(name:String, date:Int) {
//
//        self.name = name
//        self.dateOfBirth = date
//        }
//    func tellSome() {
//        print("Some thing")
//    }
//}
//
//// Классы
//struct StructureHuman:ProtocolHuman{
//    var profession: Proffesions
//
//    var name:String
//    let dateOfBirth:Int
//
//
//    init(name:String, date:Int) {
//
//        self.name = name
//        self.dateOfBirth = date
//        self.profession = .driver
//        }
//    func tellSome() {
//        print("Some thing")
//    }
//}
//
//// кложерсы
//
//enum Proffesions{
//    case painter
//    case driver
//}
//
//extension String{
//    
//    func justNumbers1()->String{
//        var result = ""
//        //result = "rr"
//       print(result)
//        for i in self{
//            
//           // let t:Int =
//            if "01234567890".contains(i){
//                //print(i)
//                result = result + String(i)
//           }
//           
//            
//        }
//        return result
//        
//    }
//    
//}
//
//    
//    var fff:String = "kjjb5kjg5bgjk45"
//
//    let ttt:String = fff.justNumbers1()
//
//print(ttt)
