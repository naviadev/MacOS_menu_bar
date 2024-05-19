////
////  mainViewModel.swift
////  MenuBar-MacOS
////
////  Created by 배성빈 on 5/9/24.
////
//
//import SwiftUI
//
//
//class ViewModel: ObservableObject {
//    
//    @Published var test: String = ""
//
////    제목, 내용등을 popupScene#2로 부터 전송 받음.
////    전송 받은 string들이 test에 적용되면서 binding된 mainScene#1에 적용된다.
////    func을 통해 view를 동적으로 생성한다.
////    db가 필요한가? -> 해당 내용들을 통해 ForEach로 view를 동적으로 생성할 수 있도록.
////    Data를 담는 무언가가 필요하긴 함. -> 어떤 형태로 받아낼 것인지도 생각하기.
//
//    func submitText(_ text: String) {
//        
//        test = text
//        
//    }
//}
