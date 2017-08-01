//
//  Data.swift
//  MVC
//
//  Created by jaeseong on 2017. 7. 31..
//  Copyright © 2017년 jaeseong. All rights reserved.
//

import Foundation

class Data {
    
    //싱글톤 인스턴스 생성
    static var shared: Data = Data()
    
    var person: Person?
    var personArray = [Person]()
    
    
}

struct Person {
    
    var name: String?
    var age: String?
    
//    private init(pName: String, pAge:Int) {
//        name = pName
//        age = pAge
//    }
}

