//
//  File.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI

//mainView
struct MainBorder : View {
    var body : some View {
        HStack{
            //LeftView
            ExpBar()
                .frame(width:50,height: 275).padding(10)
                
                
            //middleView
            MainCheckList()
                .frame(width: 300,height: 275)
                
            //Right SettingView
            SettingBar()
                .frame(width: 50)
                
        }.frame(width: 450, height: 300)
    }
}
//
#Preview{
    MainBorder()
}
