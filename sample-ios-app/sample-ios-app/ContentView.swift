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
                Section("User Information") {
                    TextField("First Name", text: $firstName)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    TextField("Last Name", text: $lastName)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    TextField("Email", text: $emailAddress)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)

                    SecureField("Password", text: $password)
                }

                Section {
                    Button(
                        action: {

                        },
                        label: {
                            Text("Submit")
                        }
                    )
                    .disabled(!isSubmitButtonEnabled)
                }
            }
            .navigationTitle("Sign Up")
        }
    }
}

#Preview {
    ContentView()
}
