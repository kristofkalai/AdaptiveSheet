//
//  DetailView.swift
//  Example
//
//  Created by Kristóf Kálai on 2023. 02. 26..
//

import AdaptiveSheet
import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack(spacing: 16) {
            ScrollableIfCan {
                if .random() {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 100)
                } else {
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 100, height: 1500)
                }
            }
            .border(.red)

            Spacer()
        }
    }
}
