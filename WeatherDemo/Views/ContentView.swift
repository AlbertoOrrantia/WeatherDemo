//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Alberto Orrantia on 29/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            WelcomeView()
                .environmentObject(locationManager)
        }
        .background(Color(hue: 0.599, saturation: 0.91, brightness: 0.2))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
