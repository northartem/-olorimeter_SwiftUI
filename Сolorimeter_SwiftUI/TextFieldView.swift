//
//  TextFieldView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var textValue: String
    
    let action: () -> Void
    
    var body: some View {
        TextField("0", text: $textValue) { _ in
            withAnimation {
                action()
            }
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 55)
        .multilineTextAlignment(.trailing)
        .keyboardType(.numberPad)
        
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textValue: .constant("11"), action: {})
    }
}


