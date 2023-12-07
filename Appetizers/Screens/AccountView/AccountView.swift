//
//  AccountView.swift
//  Appetizers
//
//  Created by Thiago Lütz Dias on 07/12/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Personal Info")) {
                        TextField("First Name", text: $viewModel.firstName)
                        TextField("Last Name", text: $viewModel.lastName)
                        TextField("Email", text: $viewModel.email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                            .autocorrectionDisabled()
                        DatePicker("Birthday", selection: $viewModel.birthdate, displayedComponents: .date)
                        
                        Button {
                            viewModel.saveChanges()
                        } label: {
                            Text("Save Changes")
                        }
                    }
                    
                    Section(header: Text("Requests")) {
                        Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                        Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                    }.toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
                }
            }
            .navigationTitle("Account")
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
