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
//  View 모델을 멤버 변수로 인스턴스하여 옵저버 패턴을 구현
    @StateObject private var viewModel = ScheduleViewModel()
    
    
    var body : some View{
        
        VStack{
//          상단 제목 부분
            HStack{
                TextField("제목", text : $viewModel.header)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 200, height: 40)
            }
//          본문 텍스트 영역 부분
            VStack{
                TextEditor(text : $viewModel.main)
//                    .textFieldStyle(.roundedBorder)
                    .border(Color.gray, width: 1)
                    .frame(width: 200,height: 200)
            }
            
//          작성 버튼
            Button{
                viewModel.addSchedule(header: viewModel.header, main: viewModel.main)

            }label: {
                Image(systemName:"plus.app")
                    .scaleEffect(1.4)
            }
            .buttonStyle(PlainButtonStyle())

        }.frame(width: 300, height: 300)
        
    }
}

#Preview{
    PopupView()
}
