//
//  ColorSliderView.swift
//  Сolorimeter_SwiftUI
//
//  Created by Артём Латушкин on 13.06.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var value: Double
    let step: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 31, alignment: .center)
                
            Slider(value: $value, in: 0...255, step: step)
                .tint(color)
        }
    }
    
    struct ColorSliderView_Previews: PreviewProvider {
        static var previews: some View {
            ColorSliderView(value: .constant(100), step: 1.0, color: .green)
        }
    }
}
