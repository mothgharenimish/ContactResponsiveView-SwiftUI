//
//  ContactCategory.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import SwiftUI

struct ContactCategory: View {
    
    let isActive : Bool
    let text : String
    var body: some View {
    
        Text(text)
                    .font(.custom("Arvo-Bold", size: 17))
                    .foregroundStyle(isActive ? .white : .red)
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(isActive ? Color.blue : Color.white)
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(isActive ? Color.clear : Color.red, lineWidth: 1.5)
                    )
        
        
    }
}

#Preview {
    VStack(spacing: 20) {
           ContactCategory(isActive: true, text: "Spam")
           ContactCategory(isActive: true, text: "Not Spam")
           ContactCategory(isActive: false, text: "Very Long Category Name")
       }
       .padding()}
