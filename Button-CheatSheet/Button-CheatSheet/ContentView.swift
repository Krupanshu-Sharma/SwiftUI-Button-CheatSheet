//
//  ContentView.swift
//  Button-CheatSheet
//
//  Created by Krupanshu Sharma on 29/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            customButtonView
            buttonRolesView
            borderedButtonView
            buttonWithShapeView
        }
    }
}

private var customButtonView: some View {
    Section{
        
        Button {
        } label: {
            Text("Gradient Button")
        }
        .buttonStyle(.gradient)
        .disabled(true)
        
        Button {
        } label: {
            Text("Custom Gradient Button")
        }
        .buttonStyle(GradientStyle(colors: [.red, .yellow, .green]))
        
    } header: {
        Text("Custom Button With Gradients")
    }
}

private var buttonRolesView: some View {
    Section{
        
        Button(role: .destructive) {
        } label: {
          Text("Destructive")
        }

        Button(role: .cancel) {
        } label: {
          Text("Cancel")
        }
        
    } header: {
        Text("Button with Roles.")
    }
}

private var borderedButtonView: some View {
    Section{
        
        Button {
        } label: {
          Text("Bordered Prominent")
        }
        .buttonStyle(.borderedProminent)

        Button {
        } label: {
          Text("Bordered")
        }
        .buttonStyle(.bordered)

        Button {
        } label: {
          Text("Borderless")
        }
        .buttonStyle(.borderless)
        
    } header: {
        Text("Bordered Buttons.")
    }
}

private var buttonWithShapeView: some View {
    Section{
        HStack {
          Button {
          } label: {
            Text("Mini")
          }
          .controlSize(.mini)

          Button {
          } label: {
            Text("Small")
          }
          .controlSize(.small)

          Button {
          } label: {
            Text("Regular")
          }
          .controlSize(.regular)

          Button {
          } label: {
            Text("Large")
          }
          .controlSize(.large)
        }
    } header: {
        Text("Button with diff shapes.")
    }
    .buttonStyle(.bordered)
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
