//
//  SearchBars.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 08/05/25.
//

import SwiftUI

struct SearchBars: View {
    
    @Binding var search: String
    var namespace: Namespace.ID
    var searchbarId: String


    var body: some View {
        
        HStack {
            
            Image(systemName: "arrow.left")
                .resizable()
                .foregroundStyle(.gray)
                .frame(width: 20,height: 20)
            
            TextField("Search Contacts", text: $search)
                .padding(.horizontal,10)

        }
        .matchedGeometryEffect(id: searchbarId, in: namespace)

        .frame(height: 80)
        .padding(.horizontal,20)
        .padding(.top,30)
        .background(.gray.opacity(0.2))
        .ignoresSafeArea(.all)
        

        
        Spacer()
    }
}

#Preview {
    @Namespace var namespace
    SearchBars(search: .constant(""), namespace: namespace, searchbarId: "searchBar")
}
