//
//  TabOne.swift
//  AppStorageAcrossViews
//
//  Created by Emrè Barish on 06/05/2024.
//

import SwiftUI

struct TabOne: View {
    @AppStorage("storedStepperValue") private var storedStepperValue: Int = 0
    let stepValueRange: ClosedRange<Int>
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Value in \(stepValueRange.description)")) {
                    Stepper(
                        value: $storedStepperValue,
                        in: stepValueRange,
                        step: 1
                    ) {
                        Text("\(storedStepperValue)")
                    }
                }
                .headerProminence(.increased)
            }
            .navigationTitle("Tab One")
        }
    }
}

#Preview {
    TabOne(stepValueRange: 0...9)
}
