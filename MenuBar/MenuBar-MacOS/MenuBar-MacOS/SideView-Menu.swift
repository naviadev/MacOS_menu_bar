//
//  SettingBar.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

//Right-Section의 버튼들을 동적으로 생성함. img를 순회하며 grid 생성.
//ForEach (View를 그려주는, 반환하는 메서드)


import SwiftUI

struct SettingBar : View {

    var cols: [GridItem] = Array(repeating: .init(.fixed(10)), count: 1)
    var img = ["gearshape", "paintpalette", "memorychip", "cpu","paperplane.fill"]
    var body: some View {
        LazyVGrid(columns: cols, alignment: .center){
            ForEach((0...4),id: \.self){
                index in
                Button {
                    test(index)
                } label: {
                    Image(systemName: "\(img[index])")
                        .scaleEffect(1.2)
                        .frame(width: 30,height: 30)
                        .padding(5)
                }
                .background(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color.gray,lineWidth: 2)
                        .background(Color.clear)
                )
                .buttonStyle(PlainButtonStyle())
                .padding(.bottom,5)
                .padding(.top,5)
            }
        }
    }
    
    
    
//  임시 제작. 각 버튼에 Action 추가.

    func test(_ index:Int){
        switch(index){
        case 0:
            return
        case 1:
            return
        case 2:
            return
        case 3:
            return
        case 4:
            return
        default:
            return
        }
    }
}
