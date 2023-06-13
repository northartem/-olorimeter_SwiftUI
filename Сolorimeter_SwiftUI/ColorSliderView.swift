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
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 31, alignment: .center)
                .accentColor(.red)
            Slider(value: $value, in: 0...255, step: step)
        }
    }
    
    struct ColorSliderView_Previews: PreviewProvider {
        static var previews: some View {
            ColorSliderView(value: .constant(1), step: 1.0)
        }
    }
}
