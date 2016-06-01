//
//  main.swift
//  class
//
//  Created by XCODE on 2015/10/22.
//  Copyright © 2015年 Nick. All rights reserved.
//

import Foundation

//class物件導向 與 struct 的差異:繼承,沿用,多型,覆寫
class Role{
    
    var age:Int = 0
    var defend:Float = 0.0
    var name:String = "噴水龍"
    
}//end Position class

var role_01:Role = Role()
print("name:\(role_01.name)\ndefend:\(role_01.defend)\nage:\(role_01.age)\n")

role_01.name = "噴火龍"
role_01.age = 10
role_01.defend = 300
print("name:\(role_01.name)\ndefend:\(role_01.defend)\nage:\(role_01.age)\n")

//物件與物件為傳遞參考 by reference(共用(指向)同一個記憶體),not copy(與 struct 不同)
//struct 為各自配置記憶體
var role_02:Role = role_01
role_02.name = "滅火龍"
role_02.age = 30
role_02.defend = 500
print("role_01\nname:\(role_01.name)\ndefend:\(role_01.defend)\nage:\(role_01.age)\n")
print("role_02\nname:\(role_02.name)\ndefend:\(role_02.defend)\nage:\(role_02.age)\n")

print("====================================")

var role_03:Role = Role()
role_03.age = role_02.age
role_03.defend = role_02.defend
role_03.name = role_02.name
print("role_03\nname:\(role_03.name)\ndefend:\(role_03.defend)\nage:\(role_03.age)\n")

print("====================================")

role_03.age = 222
role_03.defend = -100
role_03.name = "小恐龍"
print("role_03\nname:\(role_03.name)\ndefend:\(role_03.defend)\nage:\(role_03.age)\n")

print("role_02\nname:\(role_02.name)\ndefend:\(role_02.defend)\nage:\(role_02.age)\n")


