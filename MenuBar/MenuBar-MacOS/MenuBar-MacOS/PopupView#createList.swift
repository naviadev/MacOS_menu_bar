//
//  PopupView#createList.swift
//  MenuBar-MacOS
//
//  Created by 배성빈 on 5/9/24.
//

import SwiftUI
// + 버튼을 통해 새롭게 출력되는 View.
// 일정을 추가할 수 있는 역할. Header Text, Body Text 를 State 변수의 할당. 외부 ViewModel에서 해당 값을 인지하고
// MainView를 새롭게 그린다.

struct PopupView : View{
    
    @State var header: String = ""
    
    @State var main: String = ""
    
    var body : some View{
        
        VStack{
            
            TextField("제목", text : $header)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200, height: 100)
            
            TextEditor(text : $main)
                .frame(width: 200,height: 200)

        }.frame(width: 400, height: 400)
    }
}

#Preview{
    PopupView()
}

