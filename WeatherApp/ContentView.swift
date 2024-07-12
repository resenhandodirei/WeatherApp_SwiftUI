//
//  ContentView.swift
//  WeatherApp
//
//  Created by Larissa Martins Correa on 11/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Text("Fortaleza, CE")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding()
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("26")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                }
                HStack {
                    VStack {
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "cloud.sun.fill"
                                       
                        )
                    }
                }
                Spacer()

            }

        }
        
    }
}

#Preview {
    ContentView()
}
