    //
    //  TempView.swift
    //  Convert It!
    //
    //  Created by Arthur Ford on 9/9/22.
    //

import SwiftUI

struct TempView: View {
    
    @State private var givenTemp = 0.0
    @State private var fromScale: TempScales = .celcius
    @State private var toScale: TempScales = .fahrenheit
    
    private var convertedTemp: Double {
        convertTemperature(from: givenTemp, fromScale: fromScale, toScale: toScale)
    }
    
    var body: some View {
        Form {
            Section(content: {
                TextField("Temperature to Convert", value: $givenTemp, format: .number)
                    .font(.title)
                    .keyboardType(.decimalPad)
                    
            }, header: {
                Text("Temperature to Convert")
                    .font(.headline)
            })
            
            Section(content: {
                Picker("Convert From", selection: $fromScale) {
                    ForEach(TempScales.allCases, id: \.id) {value in
                        Text(value.rawValue.capitalized)
                    }
                }
                .pickerStyle(.segmented)
                
            }, header: {
                Text("Convert From")
                    .font(.headline)
            })
            Section(content: {
                Picker("Convert To", selection: $toScale) {
                    ForEach(TempScales.allCases, id: \.id) {value in
                        Text(value.rawValue.capitalized)
                    }
                }
                .pickerStyle(.segmented)
            }, header: {
                Text("Convert To")
                    .font(.headline)
            })
            Section(content: {
                Text("\(convertedTemp, specifier: "%.1f")")
                    .font(.title)
            }, header: {
                Text("Converted Temperature")
                    .font(.headline)
            })
        }
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView()
            .previewInterfaceOrientation(.portrait)
    }
}
