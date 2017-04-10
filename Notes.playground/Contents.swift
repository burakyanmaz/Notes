//: Playground - noun: a place where people can play

import UIKit

//MARK - Collection functions

/*
- MAP
*/

let johnDict = ["name": "John", "age": 36] as [String: Any]
let jackDict = ["name": "Jack", "age": 45] as [String: Any]

let dictArray = [johnDict, jackDict]

//get names
let names = dictArray.map { $0["name"] as! String } // "["John", "Jack"]"

//get ages
let ageList = dictArray.map { $0["age"] as! Int}