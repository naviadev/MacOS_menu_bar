//
//  MainCheckList.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI

struct MiddleView : View {
    
    let radius : CGFloat = 10
    
    var body: some View {
        
        HStack{
            ViewContainer(radius).overlay {
            VStack{
                ViewContainer(radius).frame(width: 280,height: 40).overlay(
                HStack{
                    MiddleTop1()
                    MiddleTop2()
                }
                )
                ViewContainer(10).frame(width: 280,height: 205).padding(.top,2)
            }
            }
        }
    }
}




//Section-Middle-Top-1 View

struct MiddleTop1 : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 0)
            .background(Color.clear)
            .frame(width: 235,height: 40)
    }
}


//Section-Middle-Top-2 View
struct MiddleTop2 : View {
    
    @Environment(\.openWindow) var openWindow
    
    var body: some View {
    
        Button{
            openWindow(id: "pop-up")
            
        }label: {
            Image(systemName:"plus.app")
                .scaleEffect(1.4)
        }
        .buttonStyle(PlainButtonStyle())
    }
}



#Preview {
    MainView()
}

