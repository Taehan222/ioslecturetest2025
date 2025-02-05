//
//  FunctionEx02.swift
//  SwiftDay06Ex01
//
//  Created by 윤태한 on 2/5/25.
//

struct FunctionEx02 {
    
    func run() {
        print("FunctionEx02.run()")
        
        // 다중 반환 값 예제
        let userInfo = getUserInfo()
        print("\(userInfo.name)님은 \(userInfo.age)세 입니다.")
    }
    
    // 이름과 나이를 입력 받는 함수
    func getUserInfo() -> (name: String, age: Int){
        print("성명: ", terminator: "")
        let name = readLine() ?? "anonymous"
        print("나이: ", terminator: "")
        let age = Int(readLine() ?? "1") ?? 1
        
        return (name, age)
    }
    
}
