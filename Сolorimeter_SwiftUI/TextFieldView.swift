//
//  TextFieldView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var textValue: String
    @Binding var sliderValue: Double
    
    @State private var alert = false
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            withAnimation {
                view()
            }
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 55)
        .multilineTextAlignment(.center)
        .keyboardType(.numberPad)
        .alert("Wrong format", isPresented: $alert, actions: {}) {
            Text("Input correct value")
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("11"), sliderValue: .constant(1))
    }
}

extension TextFieldView {
    func view() {
        if let value = Double(textValue), (0...255).contains(value) {
            self.sliderValue = value
            return
        }
        alert.toggle()
        sliderValue = 0.0
        textValue = "0.0"
    }
}
