# AppStorage Across Views


| **Device** | **Minimum OS** |
|:---:|:---:|
| **iPhone** | iOS 16 |

## Overview

This sample app shows how to store values in `AppStorage`, and how to display and update those stored values across views.

There are two tab items in the sample app, `Tab One` and `Tab Two` views. Each one of these tab items have a `Stepper` in the integer range of 0-to-9. The stepper value is stored as an `AppStorage` variable called `storedStepperValue` in `Tab One`. This value displayed in `TabOne`. And even though the stepper value is not displayed in `TabTwo`, the `Stepper` in this view still updates the value.

The user can increment or decrement the value of the `Stepper` in both views, and see how the value stored in `AppStorage` is updated through different techniques.
