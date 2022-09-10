//
//  TimeView.swift
//  Convert It!
//
//  Created by Arthur Ford on 9/9/22.
//

import SwiftUI

struct TimeView: View {
    
    @State private var givenTime = 0.0
    @State private var fromScale: TimeScales = .seconds
    @State private var toScale: TimeScales = .minutes
    
    private var convertedTime: Double {
        convertTime(from: givenTime, fromScale: fromScale, toScale: toScale)
    }
    
    var body: some View {
        HStack {
            Form {
                Section(content: {
                    TextField("Time to Convert", value: $givenTime, format: .number)
                        .font(.title)
                        .keyboardType(.decimalPad)
                    
                }, header: {
                    Text("Time to Convert")
                        .font(.headline)
                })
                
                Section(content: {
                    Picker("Convert From", selection: $fromScale) {
                        ForEach(TimeScales.allCases, id: \.id) {value in
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
                        ForEach(TimeScales.allCases, id: \.id) {value in
                            Text(value.rawValue.capitalized)
                        }
                    }
                    .pickerStyle(.segmented)
                }, header: {
                    Text("Convert To")
                        .font(.headline)
                })
                Section(content: {
                    Text("\(convertedTime, specifier: (convertedTime >= 1) ? "%.0f" : (convertedTime == 0) ? "%.0f" : "%.8f")")
                        .font(.title)
                }, header: {
                    Text("Converted Time")
                        .font(.headline)
                })
            }
            Spacer()
        }
    }
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
    }
}
