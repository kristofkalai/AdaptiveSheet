//
//  View+Extensions.swift
//
//
//  Created by Kristof Kalai on 2022. 12. 11..
//

import SwiftUI

extension View {
    public func adaptiveSheet<Content>(isPresented: Binding<Bool>,
                                       onDismiss: (() -> Void)? = nil,
                                       @ViewBuilder content: @escaping () -> Content) -> some View where Content: View {
        sheet(isPresented: isPresented, onDismiss: onDismiss) {
            ModalView(content: content)
        }
    }
}
