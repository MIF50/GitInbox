//
//  GamingView.swift
//  GitInbox
//
//  Created by Mohamed Ibrahim on 01/12/2023.
//

import SwiftUI

struct GamingView: View {
    @State private var buttonColor = Color.red
    var viewInspectorHook: ((Self) -> Void)?
    
    var body: some View {
        
        Button(action: {
            buttonColor = .orange
        }, label: {
            Circle().foregroundStyle(buttonColor)
        })
        .onAppear { self.viewInspectorHook?(self) }
    }
}

#Preview {
    GamingView()
}
