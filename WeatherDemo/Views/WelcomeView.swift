//
//  WelcomeView.swift
//  WeatherDemo
//
//  Created by Alberto Orrantia on 30/08/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text ("Weather App")
                    .bold().font(.title)
                Text("Please Share Your Current Location")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .symbolVariant(.fill)
        .foregroundColor(.white)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
