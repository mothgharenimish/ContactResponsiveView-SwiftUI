//
//  ContactModel.swift
//  ContactResponsiveView-SwiftUI
//
//  Created by Nimish Mothghare on 07/05/25.
//

import Foundation
import SwiftUICore

struct ContactModel {
    
    let contactimage : String?
    let contactname : String?
    let contacttime : String?
    let contactsim : String?
    let color : Color?
}

let contacts = [ContactModel(contactimage: "icons8-a-50", contactname: "Avinash Chavhan", contacttime: "Mobile 2.34 PM", contactsim: "SIM1", color: .green),ContactModel(contactimage: "icons8-p-50", contactname: "Poonam Dhillon", contacttime: "Mobile 2.55 PM", contactsim: "SIM2", color: .green),ContactModel(contactimage: "icons8-k-48", contactname: "Kashmira Shah", contacttime: "Mobile 5.00 PM", contactsim: "SIM1", color: .blue),ContactModel(contactimage: "icons8-m-48", contactname: "Maria Sharpova", contacttime: "Mobile 6.00 PM", contactsim: "SIM2", color: .pink)]
