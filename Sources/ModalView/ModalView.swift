//
//  ModalView.swift
//
//
//  Created by Kristof Kalai on 2022. 12. 11..
//

import SizePreferenceKey
import SwiftUI

struct ModalView<Content: View> {
    let content: () -> Content
    @State private var contentSize: CGSize = .init(width: .max, height: .max)
}

extension ModalView: View {
    var body: some View {
        ScrollableIfCan(in: .vertical) {
            content()
                .storeSize(in: $contentSize)
                .presentationDetents([.height(contentSize.height)])
        }
    }
}
