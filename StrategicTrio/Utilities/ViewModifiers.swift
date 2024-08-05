//
//  ViewModifiers.swift
//  StrategicTrio
//
//  Created by Aakash Ambodkar on 8/3/24.
//





import SwiftUI

struct NavStackContainer: ViewModifier {
    func body(content: Content) -> some View {
        if #available(iOS 16, *) {
            NavigationStack{
                content
            }
        } else {
            NavigationView {
                content
            }
            .navigationViewStyle(.stack)
        }
            
    }
}


extension View {
    public func inNavigationStack() -> some View {
        return self.modifier(NavStackContainer())
    }
}

import Foundation

