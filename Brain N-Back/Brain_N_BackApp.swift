//
//  Brain_N_BackApp.swift
//  Brain N-Back
//
//  Created by Вадим on 16.09.2024.
//

import ComposableArchitecture
import SwiftUI

@main
struct Brain_N_BackApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(
                store: Store(
                    initialState: MainReducer.State(),
                    reducer: { MainReducer() }
                )
            )
        }
    }
}
