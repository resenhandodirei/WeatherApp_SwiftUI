//
//  ContentView.swift
//  WeatherApp
//
//  Created by Larissa Martins Correa on 11/07/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Fortaleza, CE")
                MainWeatherStatusView(imageName: "sunset.fill", temperature: 19)
                Spacer()
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "SEG", imageName: "cloud.sun.fill", temperature: 26)
                    
                    WeatherDayView(dayOfWeek: "TER", imageName: "sun.max.fill", temperature: 27)
                    
                    WeatherDayView(dayOfWeek: "QUAR", imageName: "wind.snow", temperature: 28)
                    
                    WeatherDayView(dayOfWeek: "QUIN", imageName: "sunset.fill", temperature: 29)
                    WeatherDayView(dayOfWeek: "SEX", imageName: "cloud.sun.fill", temperature: 30)
                    WeatherDayView(dayOfWeek: "SAB", imageName: "cloud.sun.fill", temperature: 31)
                    WeatherDayView(dayOfWeek: "DOM", imageName: "cloud.sun.fill", temperature: 32)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Mude a hora do dia", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()

            }

        }
        
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
                       startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text("Fortaleza, CE")
            .font(.system(size: 32, weight: .medium, design: .default)).foregroundStyle(.white)
            .padding(10)
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.bottom, 40)
    }
}

