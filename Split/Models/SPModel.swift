//
//  SPModel.swift
//  Split
//
//  Created by Munirathinam, Anish | RIEPL on 07/06/23.
//

import Foundation

struct SPModel {
    /// An array of tips depcited as percent.
    let tipPercentages = [10, 15, 20, 25, 0]
    /// Check amount of the bill.
    var checkAmount = 0.0
    /// Number of people sharing the bill.
    var numberOfPersons = 2
    /// Percentage of tip.
    var tipPercent = 20

    /// Total amount payable by each person sharing the bill.
    var amountPerPerson: Double {
        let tipValue = (checkAmount / 100) * Double(tipPercent)
        let totalAmount = checkAmount + tipValue
        return totalAmount/Double(numberOfPersons)
    }
}
