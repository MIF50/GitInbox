//
//  GamingView.swift
//  GitInbox
//
//  Created by Mohamed Ibrahim on 01/12/2023.
//

import SwiftUI

struct GamingView: View {
    @State private var buttonColor = Color.red
    var didAppear: ((Self) -> Void)?

    
    var body: some View {
        
        Button(action: {
            buttonColor = .orange
        }, label: {
            Circle().foregroundStyle(buttonColor)
        })
        .onAppear { self.didAppear?(self) }
    }
}

#Preview {
    GamingView()
}
