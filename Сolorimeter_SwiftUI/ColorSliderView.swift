//
//  ColorSliderView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @State private var textValue = ""
    @State private var alert = false
    @Binding var sliderValue: Double
    
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 31, alignment: .leading)
            Slider(value: $sliderValue, in: 0...255)
                .tint(color)
                .onChange(of: sliderValue) { newValue in
                    textValue = "\(lround(sliderValue))"
                }
            TextFieldView(textValue: $textValue, action: checkValue)
                .alert("Wrong format", isPresented: $alert, actions: {}) {
                    Text("Input correct value")
                }
        }
        .onAppear {
            textValue = "\(lround(sliderValue))"
        }
    }
    
    struct ColorSliderView_Previews: PreviewProvider {
        static var previews: some View {
            ColorSliderView(sliderValue: .constant(100), color: .green)
        }
    }
    func checkValue() {
        if let value = Double(textValue), (0...255).contains(value) {
            self.sliderValue = value
            return
        }
        alert.toggle()
        sliderValue = 0.0
        textValue = "0.0"
    }
}
