//
//  SettingBar.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI

struct SettingBar : View {

    var cols: [GridItem] = Array(repeating: .init(.fixed(50)), count: 1)
    var img = ["gearshape", "paintpalette", "memorychip", "cpu"]
    var body: some View {
        LazyVGrid(columns: cols, alignment: .center){
            ForEach((0...3),id: \.self){
                index in
                Button {
                    test()
                } label: {
                    Image(systemName: "\(img[index])")
                        .scaleEffect(1.5)
                        .frame(width: 50,height: 50)
                        .padding(5)
                }
                .padding(20)
                
            }
        }
        
    }



    func test(){
        print("teste")
        
    }
}

func test(){}



