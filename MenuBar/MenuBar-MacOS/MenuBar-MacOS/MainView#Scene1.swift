//
//  File.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

//각각의 View를 불러와 단순 출력해주는 모듈.
import SwiftUI

//mainView
struct MainView : View {
    var body : some View {
        HStack{
            //LeftView
            ExpBar()
                .frame(width:50,height: 275).padding(10)
                
            //middleView
            MiddleView()
                .frame(width: 300,height: 275)
                
            //Right SettingView
            SettingBar()
                .frame(width: 50)
                
        }.frame(width: 450, height: 300)
    }
}
