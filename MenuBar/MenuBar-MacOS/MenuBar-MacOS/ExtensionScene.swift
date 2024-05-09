//
//  ExtensionView.swift
//  MenuBar-MacOS
//
//  Created by 배성빈 on 5/9/24.
//

import SwiftUI

extension Scene {
    func windowResizabilityContentSize() -> some Scene {
        if #available(macOS 13.0, *) {
            return windowResizability(.contentSize)
        } else {
            return self
        }
    }
}
