//
//  MenuBarView.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//
//
//import SwiftUI
//
//struct gridView: View{
//    var rows: [GridItem] = Array(repeating: .init(.fixed(50)), count: 1)
//    var body : some View{
//            HStack{
//            LazyHGrid(rows: rows, alignment: .center){
//                ForEach((0...2), id: \.self){
//                    ele in
//                    if(ele == 1){
//                        Color(red: 3.12, green: 1.2, blue: 3.2)
//                            .cornerRadius(15)
//                            .frame(width: 400, height: 400)
//                            .padding()
//                    }else{
//                        Color(red: 3.12, green: 1.2, blue: 3.2)
//                            .cornerRadius(15)
//                            .frame(width: 100, height: 400)
//                            .padding()
//                    }
//
//                }
//            }
//        }
//    }
//}
