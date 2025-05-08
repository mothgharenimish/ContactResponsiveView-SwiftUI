//
//  ContacttwoScreen.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 08/05/25.
//

import SwiftUI

struct ContacttwoScreen: View {
       @Binding var search: String
       var namespace: Namespace.ID
       var searchbarId: String
       var onBackTap: () -> Void

    var body: some View {
        
        VStack {
                  SearchBars(search: $search, namespace: namespace, searchbarId: searchbarId)
                      .onTapGesture {
                          onBackTap()
                      }
                  
                  ScrollView(.vertical, showsIndicators: false) {
                      Text("Suggested")
                          .font(.custom("Rockwell", size: 17))
                          .padding(.horizontal, 20)
                          .frame(maxWidth: .infinity, alignment: .leading)
                          .padding(.top, 35)
                      
                      LazyVStack(spacing: 20) {
                          ForEach(0..<contacts.count, id: \.self) { index in
                              ContactsList(contacts: contacts[index])
                          }
                      }
                      .padding(.vertical, 40)
                  }
              }
              .ignoresSafeArea()
        
    }
    
    
}

#Preview {
    @Namespace var namespace
       ContacttwoScreen(search: .constant(""), namespace: namespace, searchbarId: "Rectangle", onBackTap: {})}
