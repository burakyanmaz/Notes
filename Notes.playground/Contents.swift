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


//mapping words
let myWords = ["selam","Naber","MERHABA"].map { (string) -> String in
	return string.uppercased()
}
let otherWords = ["naber", "gunaydın"].map { $0.uppercased() }

let convertToInt = [1, 12.5, 127.12, 40.0, 5].map { Int($0) }


// custom extension

extension Array{
	func customMap<T>(transform: (Element) -> T) -> [T] {
		var list = [T]()
		forEach { (list.append(transform ($0) )) }
		return list
	}
}
let productList = ["macbook", "ipad", "iphone"].customMap { "Apple" + $0 }


//: MARK - max and min function

let lon:Double = 2.29
let lat:Double = 47.85

let latRange = (-90.0, 90.0)
let lonRange = (-180.0, 180.0)

let minLon = max(lon - 1, lonRange.0)
let minLat = max(lat - 1, latRange.0)

let maxLon = min(lon + 1, lonRange.1)
let maxLat = min(lat + 1, latRange.1)

print(minLon, minLat, maxLon, maxLat)



