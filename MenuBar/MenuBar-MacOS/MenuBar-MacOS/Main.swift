////
//  MacOSTopBarApp.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//


//Main이 되는 역할. -> View를 불러오는 역할.
import SwiftUI

@main
struct MenuController: App {
    
    var body : some Scene{
        
        MenuBarExtra {
            MainView()
        }
        
        label : {
            let image: NSImage = {
                let ratio = $0.size.height / $0.size.width
                $0.size.height = 18
                $0.size.width = 18 / ratio
                return $0
            }(NSImage(named: "AppIcon")!)
            Image(nsImage: image)
        }.menuBarExtraStyle(.window)
        
        Window("CreateList", id: "pop-up") {
            PopupView()
        }
        .windowResizabilityContentSize()
    }
}


    



