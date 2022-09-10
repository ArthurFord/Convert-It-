    //
    //  TimeConversions.swift
    //  Convert It!
    //
    //  Created by Arthur Ford on 9/10/22.
    //

import Foundation

enum TimeScales: String, Identifiable, CaseIterable {
    var id: Self { self }
    
    case seconds
    case minutes
    case hours
    case days
}

func convertTime(from givenTime: Double, fromScale: TimeScales, toScale: TimeScales) -> Double {
    var convertedTime = 0.0
    
    switch fromScale {
        case .seconds:
            switch toScale {
                case .seconds:
                    convertedTime = givenTime
                case .minutes:
                    convertedTime = givenTime / 60
                case .hours:
                    convertedTime = givenTime / 60 / 60
                case .days:
                    convertedTime = givenTime / 60 / 60 / 24
            }
        case .minutes:
            switch toScale {
                case .seconds:
                    convertedTime = givenTime * 60
                case .minutes:
                    convertedTime = givenTime
                case .hours:
                    convertedTime = givenTime / 60
                case .days:
                    convertedTime = givenTime / 60 / 24
            }
        case .hours:
            switch toScale {
                case .seconds:
                    convertedTime = givenTime * 60 * 60
                case .minutes:
                    convertedTime = givenTime * 60
                case .hours:
                    convertedTime = givenTime
                case .days:
                    convertedTime = givenTime / 24
            }
        case .days:
            switch toScale {
                case .seconds:
                    convertedTime = givenTime * 60 * 60 * 24
                case .minutes:
                    convertedTime = givenTime * 24 * 60
                case .hours:
                    convertedTime = givenTime * 24
                case .days:
                    convertedTime = givenTime
            }
    }
    return convertedTime
}
