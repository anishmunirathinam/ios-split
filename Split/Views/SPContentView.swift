//
//  SPContentView.swift
//  Split
//
//  Created by Munirathinam, Anish | RIEPL on 07/06/23.
//

import SwiftUI

struct SPContentView: View {
    @State private var model: SPModel = SPModel()
    @FocusState private var isAmountFocused: Bool

    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $model.checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                        .keyboardType(.decimalPad)
                        .focused($isAmountFocused)
                    Picker("Number of people", selection: $model.numberOfPersons) {
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    .pickerStyle(.navigationLink)
                }

                Section {
                    Picker("Tip Percent", selection: $model.tipPercent) {
                        ForEach(model.tipPercentages, id: \.self) {
                            Text("\($0)%")
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip?")
                }

                Section {
                    Text(model.amountPerPerson, format: .currency(code: Locale.current.currency?.identifier ?? "INR"))
                } header: {
                    Text("Amount payable by each person")
                }
            }
            .navigationTitle("Split")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        isAmountFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SPContentView()
    }
}
