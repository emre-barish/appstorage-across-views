//
//  TabTwo.swift
//  AppStorageAcrossViews
//
//  Created by Emrè Barish on 06/05/2024.
//

import SwiftUI

struct TabTwo: View {
    let stepValueRange: ClosedRange<Int>

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Update Value in \(stepValueRange.description)")) {
                    Stepper {
                        Text("Increment or Decrement")
                    } onIncrement: {
                        incrementStepperValueIfNewValueIsInRange()
                    } onDecrement: {
                        decrementStepperValueIfNewValueIsInRange()
                    }
                }
                .headerProminence(.increased)
            }
            .navigationTitle("Tab Two")
        }
    }
}

// MARK: - Methods

extension TabTwo {
    fileprivate func incrementStepperValueIfNewValueIsInRange() {
        let incrementedStepperValue = UserDefaults.standard.integer(forKey: "storedStepperValue") + 1
        if incrementedStepperValue <= stepValueRange.upperBound {
            UserDefaults.standard.setValue(incrementedStepperValue, forKey: "storedStepperValue")
        }
    }

    fileprivate func decrementStepperValueIfNewValueIsInRange() {
        let decrementedStepperValue = UserDefaults.standard.integer(forKey: "storedStepperValue") - 1
        if decrementedStepperValue >= stepValueRange.lowerBound {
            UserDefaults.standard.setValue(decrementedStepperValue, forKey: "storedStepperValue")
        }
    }
}

// MARK: - Previews

#Preview {
    TabTwo(stepValueRange: 0...9)
}
