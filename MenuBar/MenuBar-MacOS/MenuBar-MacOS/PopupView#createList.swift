//
//  PopupView#createList.swift
//  MenuBar-MacOS
//
//  Created by 배성빈 on 5/9/24.
//

import SwiftUI


struct PopupView : View{
    
    @State var header: String = ""
    @State var main: String = ""
    
    var body : some View{
        
        VStack{
            
            TextField("제목", text : $header)
                .textFieldStyle(.roundedBorder)
                .frame(width: 200, height: 100)
            
            TextEditor(text : $main)
                .frame(width: 200,height: 200)
                
            
       
                
            
            
        }.frame(width: 400, height: 400)
    }
}

#Preview{
    PopupView()
}

