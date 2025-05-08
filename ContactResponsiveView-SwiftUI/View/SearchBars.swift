//
//  SearchBars.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 08/05/25.
//

import SwiftUI

struct SearchBars: View {
    
    @Binding var search: String

    var body: some View {
        
        HStack {
            
            Image(systemName: "arrow.left")
                .resizable()
                .foregroundStyle(.black)
                .frame(width: 20,height: 20)
            
            TextField("Search Contacts", text: $search)
                .padding(.horizontal,10)

        }
        .frame(height: 80)
        .padding(.horizontal,20)
        .padding(.top,30)
        .background(.gray.opacity(0.2))
        .ignoresSafeArea(.all)
        

        
        Spacer()
    }
}

#Preview {
    SearchBars(search: .constant(""))
}
