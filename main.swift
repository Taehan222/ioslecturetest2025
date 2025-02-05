//
//  main.swift
//  weekly_project01
//
//  Created by 윤태한 on 2/2/25.
//

import Foundation

var retrospectives: [String: String] = [:]

func addRetrospective() {
    print("날짜를 입력하세요 (예: 2024-12-25):", terminator: " ")
    if let date = readLine(), !date.isEmpty {
        if retrospectives[date] != nil {
            print("이미 해당 날짜에 회고가 존재합니다.")
        } else {
            print("회고 내용을 입력하세요:", terminator: " ")
            if let content = readLine(), !content.isEmpty {
                retrospectives[date] = content
                print("회고가 추가되었습니다.")
            }
        }
    }
}

func readRetrospective() {
    print("조회할 날짜를 입력하세요:", terminator: " ")
    if let date = readLine(), let content = retrospectives[date] {
        print("날짜: \(date)\n 내용: \(content)")
    } else {
        print("해당 날짜의 회고가 없습니다.")
    }
}

func updateRetrospective() {
    print("수정할 날짜를 입력하세요:", terminator: " ")
    if let date = readLine(), retrospectives[date] != nil {
        print("새로운 회고 내용을 입력하세요:", terminator: " ")
        if let newContent = readLine(), !newContent.isEmpty {
            retrospectives[date] = newContent
            print("회고가 수정되었습니다.")
        }
    } else {
        print("해당 날짜의 회고가 없습니다.")
    }
}

func deleteRetrospective() {
    print("삭제할 날짜를 입력하세요:", terminator: " ")
    if let date = readLine(), retrospectives.removeValue(forKey: date) != nil {
        print("회고가 삭제되었습니다.")
    } else {
        print("해당 날짜의 회고가 없습니다.")
    }
}

func listAllRetrospectives() {
    if retrospectives.isEmpty {
        print("저장된 회고가 없습니다.")
    } else {
        print("=== 저장된 회고 목록 ===")
        for (date, content) in retrospectives.sorted(by: { $0.key < $1.key }) {
            print("날짜: \(date)\n내용: \(content)\n")
        }
    }
}


while true {
    print("\n=== 회고 시스템 ===")
    print("1. 회고 추가")
    print("2. 회고 조회")
    print("3. 회고 수정")
    print("4. 회고 삭제")
    print("5. 전체 회고 목록 출력")
    print("6. 종료")
    print("메뉴를 선택하세요:", terminator: " ")
    
    if let choice = readLine() {
        switch choice {
        case "1": addRetrospective()
        case "2": readRetrospective()
        case "3": updateRetrospective()
        case "4": deleteRetrospective()
        case "5": listAllRetrospectives()
        case "6":
            print("프로그램을 종료합니다.")
            break
        default:
            print("잘못된 입력입니다. 다시 선택해주세요.")
        }
    }
}
