//
//  ContentView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValueRed = Double.random(in: 1...255)
    @State private var sliderValueGreen = Double.random(in: 1...255)
    @State private var sliderValueBlue = Double.random(in: 1...255)
    
    private let sliderStep = 1.0
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            VStack {
                ColorRectangleView(valueColorRed: $sliderValueRed, valueColorGreen: $sliderValueGreen, valueColorBlue: $sliderValueBlue)
                VStack() {
                    ColorSliderView(value: $sliderValueRed, step: sliderStep, color: .red)
                    ColorSliderView(value: $sliderValueGreen, step: sliderStep, color: .green)
                    ColorSliderView(value: $sliderValueBlue, step: sliderStep, color: .blue)
                }
                .padding(.top, 20)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
