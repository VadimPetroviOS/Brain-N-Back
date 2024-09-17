//
//  MainView.swift
//  Brain N-Back
//
//  Created by Вадим on 16.09.2024.
//

import ComposableArchitecture
import SwiftUI

struct MainView: View {
    @Perception.Bindable
    var store: StoreOf<MainReducer>
    
    var body: some View {
        WithPerceptionTracking {
            contentView
        }
    }
    
    private var contentView: some View {
        VStack(alignment: .center, spacing: 0) {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                HStack {
                    Text("Brain N-Back")
                        .bold()
                        .font(.title2)
                    Spacer()
                    Image(systemName: "gearshape.fill")
                        .font(.title)
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                }
                .padding()
            }
            .frame(height: 60)
            .foregroundStyle(.white)
            
            TabView {
                NavigationView {
                    Text("Screen 1")
                }
                
                NavigationView {
                    Text("Screen 2")
                }
                
                NavigationView {
                    Text("Screen 3")
                }
            }
            .tabViewStyle(PageTabViewStyle())
            
//            Color.white
//                .ignoresSafeArea()
        }
    }
    
}
