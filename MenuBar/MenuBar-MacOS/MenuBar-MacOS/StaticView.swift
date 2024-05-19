//
//  StaticView.swift
//  MenuBar-MacOS
//
//  Created by 배성빈 on 5/9/24.
//

import SwiftUI

//재활용 가능한 ViewContainer Moduel
struct ViewContainer : View {
    let radius : CGFloat
    init(_ radius : CGFloat){
        self.radius = radius
    }
    var body: some View {
        HStack{
            RoundedRectangle(cornerRadius: radius)
                .stroke(Color.gray, lineWidth: 2)
                .background(Color.clear)
        }
    }
}

#Preview {
    MainView()
}
