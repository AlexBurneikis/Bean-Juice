//
//  Method.swift
//  Bean Juice
//
//  Created by Iiro Alhonen on 6.4.2020.
//  Copyright © 2020 Nifty Tree Studios. All rights reserved.
//

import Foundation
import SwiftUI

struct MethodView: View {

    @State private var ratio: Double = 17
    @State private var cups: Double = 1
    
    let methodName: String
    let maxCups: Double
    @Binding var cupSize: Double
    let groundLevel: String

    var body: some View {
        ScrollView {
            VStack(alignment: .center) {
                Circle()
                    .frame(width: 300.0, height: 300.0)
                Text(methodName)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(10)
                                
            VStack {
                Text("Ratio")
                    .font(.title)
                Slider(value: $ratio, in: 12...20, step: 1)
                    .accentColor(Color("highlight"))
                Text("1:\(Int(ratio))")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                Text("Cups")
                    .font(.title)
                Slider(value: $cups, in: 0...maxCups, step: 1)
                    .accentColor(Color("highlight"))
                Text("\(Int(cups)) cups")
                    .font(.subheadline)
            }
                .padding(.leading, 30)
            .padding(.trailing, 30)
            .padding(.bottom, 10)
            VStack {
                HStack {
                    Text("Ground level")
                        .font(.title)
                    Spacer()
                    Text(groundLevel)
                        .font(.subheadline)
                }
                .padding(.bottom, 10)
            HStack {
                Text("Water")
                        .font(.title)
                    Spacer()
                    Text("\(calculateWaterAmount(water: cupSize, cups: cups)) g")
                        .font(.title)
                }
                .padding(.bottom, 10)
                HStack {
                    Text("Coffee")
                        .font(.title)
                    Spacer()
                    Text("\(calculateCoffeeAmount(water: cupSize, cups: cups, ratio: ratio), specifier: "%.1f") g")
                        .font(.title)
                }
                .padding(.bottom, 10)
            }
            .padding(.leading, 30)
            .padding(.trailing, 30)
            .padding(.bottom, 10)
        }
            
        }
    }
}
