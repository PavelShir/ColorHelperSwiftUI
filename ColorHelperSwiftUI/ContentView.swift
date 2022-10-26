//
//  ContentView.swift
//  ColorHelperSwiftUI
//
//  Created by 19543442 on 23.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 1...255)
    @State private var greenSliderValue = Double.random(in: 1...255)
    @State private var blueSliderValue = Double.random(in: 1...255)
    @State private var textValue = ""
    
    var body: some View {
        VStack {
            RectangleView(rectanglge: Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
            RedSliderView(value: $redSliderValue, text: $textValue, color: .red)
            GreenSliderView(value: $greenSliderValue, text: $textValue, color: .green)
            BlueSliderView(value: $blueSliderValue, text: $textValue, color: .blue)
            
            Spacer()
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
