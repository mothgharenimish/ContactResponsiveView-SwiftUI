//
//  ContactOneScreen.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import SwiftUI

struct ContactOneScreen: View {
    
    @State var isExpanded: Bool = true
    private var rectangleId = "Rectangle"
    @Namespace var expansionAnimation
    @State private var search: String = ""
    @State private var selectedIndex: Int = 0
    
    let contactCategory = ["All","Missed","Contacts","Non-Spam","Spam"]
    
    var body: some View {
        
        ResponsiveView { prop in
            GeometryReader { geo in
                if !prop.isLandscape && !prop.isiPadPortrait {
                    VStack(alignment: .leading, spacing: 0) {
                        if isExpanded {
                            SearchBar(search: $search, namespace: expansionAnimation, rectangleId: rectangleId)
                            
                            ScrollView(.vertical, showsIndicators: false) {
                                VStack(alignment: .leading, spacing: 0) {
                                    
                                    // Horizontal Category List
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        HStack(spacing: 10) {
                                            ForEach(0..<contactCategory.count) { i in
                                                ContactCategory(isActive: selectedIndex == i, text: contactCategory[i])
                                                    .onTapGesture {
                                                        selectedIndex = i
                                                    }
                                            }
                                        }
                                        .padding(.horizontal, 20)
                                    }
                                    .padding(.top, 20)
                                    
                                    Text("Today")
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
                        }
                    }
                }
            }
        }
    }
    
    
}

#Preview {
    ContactOneScreen()
}
