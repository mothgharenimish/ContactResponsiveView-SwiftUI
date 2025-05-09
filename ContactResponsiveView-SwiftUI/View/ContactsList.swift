//
//  ContactsList.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import SwiftUI

struct ContactsList: View {
    
    let contacts : ContactModel
    @State var isExpanded = false

    var body: some View {
        
        VStack(alignment: .leading) {
                    HStack {
                        Image(contacts.contactimage ?? "")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 35)
                            .padding(14)
                            .background(contacts.color ?? .gray)
                            .clipShape(Circle())
                            .padding(.top, -28)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            HStack {
                                Text(contacts.contactname ?? "")
                                    .font(.custom("Rockwell", size: 18))
                                Image(systemName: "wifi")
                            }
                            
                            HStack {
                                Image(systemName: "line.diagonal.arrow")
                                Text(contacts.contacttime ?? "")
                                    .font(.custom("Rockwell", size: 14))
                            }
                            
                            Text(contacts.contactsim ?? "")
                                .font(.custom("Rockwell", size: 14))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "phone")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 27, height: 27)
                            .padding(.top, -20)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top,5)
                    
                    // Expanded content
                    if isExpanded {
                        VStack(alignment: .leading) {
                            Rectangle()
                                .frame(height: 1)
                                .foregroundColor(.gray)
                                .padding(.horizontal, 20)
                            
                            HStack(spacing: 10) {
                                VStack {
                                    Image(systemName: "video.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 37, height: 37)
                                    
                                    Text("Video Call")
                                        .font(.custom("Rockwell", size: 12))
                                }
                                .frame(maxWidth: .infinity)
                                
                                VStack {
                                    Image(systemName: "ellipsis.message")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 37, height: 37)
                                    
                                    Text("Message")
                                        .font(.custom("Rockwell", size: 12))
                                }
                                .frame(maxWidth: .infinity)
                                
                                VStack {
                                    Image(systemName: "clock")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 37, height: 37)
                                    
                                    Text("History")
                                        .font(.custom("Rockwell", size: 12))
                                }
                                .frame(maxWidth: .infinity)
                            }
                            .padding(.horizontal, 10)
                        }
                        .padding(.top, 10)
                    }
                }
                .padding(.vertical, 10)
//                .frame(maxWidth: .infinity)
                .background(isExpanded ? Color.gray.opacity(0.2) : Color.clear)
                .cornerRadius(isExpanded ? 20 : 0)
                .padding(.horizontal, isExpanded ? 10 : 0)
                .onTapGesture {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }
                .frame(height: isExpanded ? 170 : 100)
    }
}

#Preview {
    ContactsList(contacts: ContactModel(contactimage: "icons8-p-50", contactname: "Poonam Dhillon", contacttime: "Mobile 2.55 PM", contactsim: "SIM2", color: .green))
}
