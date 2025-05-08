//
//  ContactsList.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import SwiftUI

struct ContactsList: View {
    var body: some View {
        
        HStack {
            
            Image("icons8-a-50")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .padding(10)
                .background(Color.pink)
                .clipShape(Circle())
                .padding(.top,-30)
            
            
            VStack(alignment: .leading,spacing: 10) {
                
                HStack {
                    
                    Text("Avinash Sharma")
                        .font(.custom("Rockwell", size: 18))
                    Image(systemName: "wifi")
                }
                
                HStack {
                    Image(systemName: "line.diagonal.arrow")
                    Text("Mobile 2.36 PM")
                        .font(.custom("Rockwell", size: 18))
                }
                
                Text("SIM2")
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
    ContactsList()
}
