//
//  ContactsList.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import SwiftUI

struct ContactsList: View {
    
    let contacts : ContactModel
    var body: some View {
        
        HStack {
            
            Image(contacts.contactimage!)
                .resizable()
                .scaledToFit()
                .frame(width: 35, height: 35)
                .padding(14)
                .background(contacts.color!)
                .clipShape(Circle())
                .padding(.top,-30)
            
            
            VStack(alignment: .leading,spacing: 10) {
                
                HStack {
                    
                    Text(contacts.contactname!)
                        .font(.custom("Rockwell", size: 18))
                    Image(systemName: "wifi")
                }
                
                HStack {
                    Image(systemName: "line.diagonal.arrow")
                    Text(contacts.contacttime!)
                        .font(.custom("Rockwell", size: 18))
                }
                
                Text(contacts.contactsim!)
                    .font(.custom("Rockwell", size: 18))
                
            }
            
            Spacer()
            
            Image(systemName: "phone")
                .resizable()
                .scaledToFit()
                .frame(width: 27, height: 27)
                .padding(.top,-20)

        }
        .padding(.horizontal,20)
    }
}

#Preview {
    ContactsList(contacts: ContactModel(contactimage: "icons8-p-50", contactname: "Poonam Dhillon", contacttime: "Mobile 2.55 PM", contactsim: "SIM2", color: .green))
}
