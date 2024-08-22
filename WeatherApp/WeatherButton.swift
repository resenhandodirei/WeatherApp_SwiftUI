//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Larissa Martins Correa on 21/08/24.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 250, height: 80)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

