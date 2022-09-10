    //
    //  MainView.swift
    //  Convert It!
    //
    //  Created by Arthur Ford on 9/9/22.
    //

import SwiftUI

struct MainView: View {
    
    var body: some View {
        NavigationView {
                    List {
                        HStack {
                            Image(systemName: "thermometer")
                                .font(.title)
                                .foregroundColor(.blue)
                                .frame(width: 50, height: 50, alignment: .center)
                            NavigationLink("Temperature") { TempView() }
                        }
                        HStack {
                            Image(systemName: "ruler")
                                .font(.title)
                                .foregroundColor(.blue)
                                .frame(width: 50, height: 50, alignment: .center)
                            NavigationLink("Length") { LengthView() }
                        }
                        HStack {
                            Image(systemName: "clock.circle")
                                .font(.title)
                                .foregroundColor(.blue)
                                .frame(width: 50, height: 50, alignment: .center)
                            NavigationLink("Time") { TimeView() }
                        }
                        HStack {
                            Image(systemName: "testtube.2")
                                .font(.title)
                                .foregroundColor(.blue)
                                .frame(width: 50, height: 50, alignment: .center)
                            NavigationLink("Volume") { VolumeView() }
                        }
                    }
                    .font(.title3)
                    .navigationTitle("Convert It!")
                }
        .navigationViewStyle(.stack)
            }
        }
       



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
