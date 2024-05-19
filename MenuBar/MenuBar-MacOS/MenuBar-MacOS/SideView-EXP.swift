//
//  ExpBar.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

//Left-section EXP Bar의 영역을 표시하는 View
import SwiftUI

struct ExpBar : View {
    var body: some View {
        HStack{
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 2)
                .background(Color.clear)
                .overlay(
                    Text("EXP Area")
                )

        }
    }

}
