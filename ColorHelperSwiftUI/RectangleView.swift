//
//  RectangleView.swift
//  ColorHelperSwiftUI
//
//  Created by 19543442 on 24.10.2022.
//

import SwiftUI

struct RectangleView: View {
    
    let rectanglge: Color
        
        var body: some View {
            VStack {
            Rectangle()
                .foregroundColor(rectanglge)
                .frame(height: 150)
                .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .cornerRadius(20)
            
        }
            .padding()
        }
    }
    

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(rectanglge: Color(red: 0.5, green: 0.5, blue: 0.5))
    }
}
