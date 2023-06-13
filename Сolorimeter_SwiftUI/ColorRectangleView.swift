//
//  ColorRectangleView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct ColorRectangleView: View {
    @Binding var valueColorRed: Double
    @Binding var valueColorGreen: Double
    @Binding var valueColorBlue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(red: valueColorRed/255, green: valueColorGreen/255, blue: valueColorBlue/255))
            .frame(height: 180)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1))
    }
}

struct ColorRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRectangleView(valueColorRed: .constant(100), valueColorGreen: .constant(50), valueColorBlue: .constant(90))
    }
}
