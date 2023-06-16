//
//  ColorRectangleView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct ColorRectangleView: View {
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            .frame(height: 180)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 1))
    }
}

struct ColorRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorRectangleView(red: 100, green: 50, blue: 90)
    }
}
