//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by MicroBanker Nepal Pvt. Ltd. on 25/06/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                
                Button{
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
                .font(.body)
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
