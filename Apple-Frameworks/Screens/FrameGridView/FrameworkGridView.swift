//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 25/06/2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
  
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) {
                        framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)

                        }
                    }
                }
            }
            .navigationTitle(" Framework")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        
        }
    }
}



#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


