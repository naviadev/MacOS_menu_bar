//
//  File.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI

struct MainBorder : View {
    var body : some View {
        HStack{
            ExpBar()
            
            MainCheckList()
            
            SettingBar()
                .frame(width: 100, height: 500).padding()
                
        }.frame(width: 700, height: 500)
    }
}

#Preview{
    MainBorder()
}
