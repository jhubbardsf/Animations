//
//  ContentView.swift
//  Animations
//
//  Created by Josh Hubbard on 1/26/20.
//  Copyright © 2020 YeetBox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            // do nothing
            self.enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.default)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
