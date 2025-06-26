//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 25/06/2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    
    
}
