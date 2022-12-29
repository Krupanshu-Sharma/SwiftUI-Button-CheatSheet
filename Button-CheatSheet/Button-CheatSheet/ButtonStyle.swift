//
//  ButtonStyle.swift
//  Button-CheatSheet
//
//  Created by Krupanshu Sharma on 29/12/22.
//

import SwiftUI

struct GradientStyle: ButtonStyle {
    // 1
    @Environment(\.isEnabled) private var isEnabled
    private let colors: [Color]
    
    // 2
    init(colors: [Color] = [.yellow.opacity(0.6), .yellow, .yellow.opacity(0.6), .yellow]) {
        self.colors = colors
    }
    
    // 3
    private var enabledBackground: some View {
      LinearGradient(
        colors: colors,
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    }

    // 4
    private var disabledBackground: some View {
      LinearGradient(
        colors: [.gray],
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
    }

    // 5
    private var pressedBackground: some View {
      LinearGradient(
        colors: colors,
        startPoint: .topLeading,
        endPoint: .bottomTrailing)
      .opacity(0.4)
    }
    
    // 6
    func makeBody(configuration: Configuration) -> some View {
      HStack {
        configuration.label
      }
      .font(.body.bold())
      .foregroundColor(isEnabled ? .white : .black)
      .padding()
      .frame(height: 44)
      .background(backgroundView(configuration: configuration))
      .cornerRadius(10)
    }

    // 7
    @ViewBuilder private func backgroundView(configuration: Configuration) -> some View {
      if !isEnabled {
        disabledBackground
      } else if configuration.isPressed {
        pressedBackground
      } else {
        enabledBackground
      }
    }
}

extension ButtonStyle where Self == GradientStyle {
  static var gradient: GradientStyle { .init() }
}

