//
//  ContentView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 1...255)
    @State private var green = Double.random(in: 1...255)
    @State private var blue = Double.random(in: 1...255)
    
    @FocusState private var focus: Bool
    
    var body: some View {
        ZStack {
            VStack {
                ColorRectangleView(red: red, green: green, blue: blue)
                VStack() {
                    ColorSliderView(sliderValue: $red, color: .red)
                    ColorSliderView(sliderValue: $green, color: .green)
                    ColorSliderView(sliderValue: $blue, color: .blue)
                }
                .focused($focus)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            focus = false
                        }
                    }
                }
                .padding(.top, 20)
                Spacer()
            }
            .padding()
            .onTapGesture { closed() }
            .background(Color("background"))
        }
    }
}

extension ContentView {
    private func closed() {
        UIApplication.shared.sendAction(
            #selector(
                UIResponder.resignFirstResponder
            ),
            to: nil, from: nil, for: nil
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
