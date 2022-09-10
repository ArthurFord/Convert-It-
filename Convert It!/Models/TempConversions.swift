//
//  TempConversions.swift
//  Convert It!
//
//  Created by Arthur Ford on 9/9/22.
//

import Foundation

enum TempScales: String, Identifiable, CaseIterable {
    var id: Self { self }
   
    case celcius
    case fahrenheit
    case kelvin
}

func convertTemperature(from givenTemp: Double, fromScale: TempScales, toScale: TempScales) -> Double {
    
    var convertedTemp = 0.0
    
    
    switch fromScale {
        case .celcius:
            switch toScale {
                case .celcius:
                    convertedTemp = givenTemp
                case .fahrenheit:
                    convertedTemp = (givenTemp * (9/5)) + 32
                case .kelvin:
                    convertedTemp = givenTemp + 273.15
            }
        case .fahrenheit:
            switch toScale {
                case .celcius:
                    convertedTemp = (givenTemp - 32) * (5/9)
                case .fahrenheit:
                    convertedTemp = givenTemp
                case .kelvin:
                    convertedTemp = (givenTemp - 32) * (5/9) + 273.15
            }
        case .kelvin:
            switch toScale {
                case .celcius:
                    convertedTemp = givenTemp - 273.15
                case .fahrenheit:
                    convertedTemp = (givenTemp - 273.15) * (9/5) + 32
                case .kelvin:
                    convertedTemp = givenTemp
            }
    }
    
    return convertedTemp
}
