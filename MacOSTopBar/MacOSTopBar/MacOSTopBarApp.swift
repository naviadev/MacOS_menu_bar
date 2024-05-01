//
//  MacOSTopBarApp.swift
//  MacOSTopBar
//
//  Created by 배성빈 on 5/1/24.
//

import SwiftUI

@main
struct MenuMap: App {
    var body: some Scene {
        MenuBarExtra {
            ContentView()
        } label: {
            let image: NSImage = {
                let ratio = $0.size.height / $0.size.width
                $0.size.height = 18
                $0.size.width = 18 / ratio
                return $0
            }(NSImage(named: "AppIcon")!)
            
            Image(nsImage: image)
        }
    }
    
    struct AppMenu: View {
        var body: some View {
            ContentView()
        }
    }
}
