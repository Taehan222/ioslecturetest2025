//
//  PhoneBook.swift
//  SwiftDay06Proj
//
//  Created by 윤태한 on 2/5/25.
//


struct PhoneBook {
    let MENU_TITLE = "1)INPUT 2)OUTPUT 3)SEARCH 4)EDIT 5)DELETE 6)END"
    let menuItems: [String] = ["INPUT", "OUTPUT", "SEARCH", "EDIT", "DELETE", "END", "HELP"]
    
    func run(){
        menu()
    }
    
    func menu(){
        print(":::: 전화 번호부 ::::")
        print(MENU_TITLE)
        print("Choice: ",terminator: "")
        let no = Int(readLine() ?? "0") ?? 0
     
        if no == 1 {
            
        }
        if no == 2 {
            print("---- 목록 출력 기능 ----")
            print("친구들의 전화번호 목록을 보여 줍니다.")
        }
        if no == 3 {
            print("---- 검색 기능 ----")
            print("친구 전화번호를 검색 합니다.")
        }
        if no == 4 {
            print("---- 수정 기능 ----")
            print("친구 정보를 수정합니다.")
        }
        if no == 5 {
            print("----  삭제 ----")
            print("친구를 드롭 합니다. ")
        }
        if no == 6 {
            print("---- 프로그램 종료 ----")
            print("수고하셨습니다. 다음 기회에 또 만나요.")
        }
    }
    
    func menu(menuItems: [String]) -> Int {
        var no = 0
        repeat {
            print(MENU_TITLE);
            for (i, item) in menuItems.enumerated(){
                print("[(i+1)](item)", terminator: " ")
            }
            print("\nChoice", terminator: ": ")
            no = Int(readLine() ?? "") ?? 0
        } while (no<1 || no>menuItems.count)

        return no
    }
    
    
    func input() {
        print("---- 입력 기능 ----")
        print("새로운 친구를 등록합니다.")
    }
    
    func output() -> (name: String, phoneNum: String) {
        
        return ("", "")
    }
    
    func search(name: String) {
        
    }
    
    func edit(name: String){
        
        print("수정 완료.")
    }
    
    func delete(name: String){
        
        print("삭제 완료.")
    }
}
