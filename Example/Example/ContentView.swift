//
//  ContentView.swift
//  Example
//
//  Created by Kristof Kalai on 2022. 12. 11..
//

import AdaptiveSheet
import SwiftUI

struct ContentView: View {
    @State private var showSmallSheet = false
    @State private var showBigSheet = false

    var body: some View {
        VStack(spacing: 16) {
            Button("Show small sheet") {
                showSmallSheet.toggle()
            }
            .adaptiveSheet(isPresented: $showSmallSheet) {
                Rectangle()
                    .fill(.blue)
                    .frame(height: 100)
            }
            Button("Show big sheet") {
                showBigSheet.toggle()
            }
            .adaptiveSheet(isPresented: $showBigSheet) {
                Rectangle()
                    .fill(.blue)
                    .frame(height: 1500)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
