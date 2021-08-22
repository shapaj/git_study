//import UIKit
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
