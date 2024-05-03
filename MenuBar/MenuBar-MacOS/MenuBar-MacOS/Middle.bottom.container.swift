//
//  MainCheckList.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI




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




struct Mid : View {
    var body: some View {
        ViewContainer(10)
    }
}
