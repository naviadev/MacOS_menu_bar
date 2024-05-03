//
//  MainCheckList.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI

struct MainCheckList : View {
    var body: some View {
        //RoundedRectangle, MiddleView 테두리
        HStack{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 2)
                .background(Color.clear)
                .overlay {
                    //MiddleView 내부 container 2 .top .bottom
                    VStack{
                        // Top Container
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                            .background(Color.clear)
                            .frame(width: 280,height: 40)
                            // 분할 width 280 height 40
                            .overlay(
                                HStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 0)
                                        .background(Color.clear)
                                        .frame(width: 235,height: 40)
                                        .overlay(
                                            Text("Achievement Area")
                                            
                                        )
                                    
                                    Button{
                                        addList()
                                            
                                    }label: {
                                        Image(systemName:"plus.app")
                                            .scaleEffect(1.4)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                        
                                }
                                
                            )
                        // Bottom Container
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                            .background(Color.clear)
                            .frame(width: 280,height: 205)
                            .padding(.top,2)
                            // 하단 분할 280 205
                            .overlay(
                                Text("List Area")
                            )
                    }
                }
        }
    }
    func addList(){}
}

#Preview {
    MainBorder()
}
