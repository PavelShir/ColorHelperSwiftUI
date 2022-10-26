//
//  BlueSliderView.swift
//  ColorHelperSwiftUI
//
//  Created by 19543442 on 24.10.2022.
//

import SwiftUI

struct BlueSliderView: View {
   
    @Binding var value: Double
    @Binding var text: String
    let color: Color
    
    var body: some View {
    HStack {
        Text("0").foregroundColor(color)
        Slider(value: $value, in: 0...255, step: 1)
        Text("255").foregroundColor(color)
        TextField("test", text: $text)
            .textFieldStyle(.roundedBorder)
            .frame(width: 70)
    }
    .padding()
    }
}

struct BlueSliderView_Previews: PreviewProvider {
    static var previews: some View {
        BlueSliderView(value: .constant(10), text: .constant(""), color: .blue)
    }
}
