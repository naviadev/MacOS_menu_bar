//
//  ExtensionView.swift
//  MenuBar-MacOS
//
//  Created by 배성빈 on 5/9/24.
//

//Scene 프로토콜에 메서드를 추가할 수 있도록 Extension 문법을 사용하여 메서드를 추가하였다.
// -> popup 역할을 하는 #createList View 크기를 조절할 수 있도록.
import SwiftUI

extension Scene {
    func windowResizabilityContentSize() -> some Scene {
        if #available(macOS 13.0, *) {
            return windowResizability(.contentSize)
        } else {
            return self
        }
    }
}
