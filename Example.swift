//
//  Example.swift
//  SwiftDay06PM
//
//  Created by 윤태한 on 2/5/25.
//

struct Example {
    
    func ex01() {
        print("Hello, World!")
        // myFunc 선언
        func myFunc(){
            print("myFunc 호출")
        }
        myFunc()

        // 변수에 함수를 담는다(참조) 괄호X
        var refFunc = myFunc
        // 변수에 함수에 참조 가능
        refFunc()
    }
    
    func ex02() {
        
    }
    
    func ex03() {
        
    }
    
}
