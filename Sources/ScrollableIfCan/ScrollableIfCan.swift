//
//  ScrollableIfCan.swift
//  
//
//  Created by Kristof Kalai on 2022. 12. 11..
//

import SwiftUI

public struct ScrollableIfCan<Content: View> {
    private let axes: Axis.Set
    private let showsIndicators: Bool
    private let content: () -> Content

    public init(in axes: Axis.Set = [.horizontal, .vertical],
                showsIndicators: Bool = true,
                @ViewBuilder content: @escaping () -> Content) {
        self.axes = axes
        self.showsIndicators = showsIndicators
        self.content = content
    }
}

extension ScrollableIfCan: View {
    public var body: some View {
        ViewThatFits(in: axes) {
            content()

            ScrollView(axes, showsIndicators: showsIndicators, content: content)
        }
    }
}
