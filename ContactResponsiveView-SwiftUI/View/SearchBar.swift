//
//  SearchBar.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var search: String
    var namespace: Namespace.ID
    var rectangleId: String

    var body: some View {
        
        HStack {
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 20,height: 20)
            
            TextField("Search Contacts", text: $search)
            
            Image(systemName: "microphone")
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 20,height: 20)
            
            Image(systemName: "slider.vertical.3")
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 20,height: 20)
        }
        
        .padding(.horizontal,20)
        .frame(height: 50)
        .background(
                  RoundedRectangle(cornerRadius: 25.0)
                      .fill(Color.gray.opacity(0.2))
              )
              .clipShape(RoundedRectangle(cornerRadius: 25.0))
              .padding(.horizontal, 20)


    }
}

#Preview {
    @Namespace var namespace
    return SearchBar(search: .constant(""), namespace: namespace, rectangleId: "searchBar")
}
