//
//  ContentView.swift
//  sample-ios-app
//
//  Created by Eric Hyche on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    @State private var password = ""

    var isSubmitButtonEnabled: Bool {
        !firstName.isEmpty &&
        !lastName.isEmpty &&
        !emailAddress.isEmpty &&
        password.count > 8
    }

    var body: some View {
        NavigationStack {
            Form {
                Section(LocalizedStringKey("User Information")) {
                    TextField(LocalizedStringKey("First Name"), text: $firstName)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    TextField(LocalizedStringKey("Last Name"), text: $lastName)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    TextField(LocalizedStringKey("Email"), text: $emailAddress)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    SecureField(LocalizedStringKey("Password"), text: $password)
                }

                Section {
                    Button(
                        action: {

                        },
                        label: {
                            Text(LocalizedStringKey("Submit"))
                        }
                    )
                    .disabled(!isSubmitButtonEnabled)
                }
            }
            .navigationTitle(LocalizedStringKey("Sign Up"))
        }
    }
}

#Preview {
    ContentView()
}
