//
//  LoginView.swift
//  Ellifit
//
//  Created by Rudrank Riyam on 05/05/21.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("header_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Welcome to Refactory!")
                .fontWeight(.black)
                .foregroundColor(Color.blue)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Text("Lets do the todo.")
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button("Sign in with Google") {
                viewModel.signIn()
            }
            .buttonStyle(AuthenticationButtonStyle())
        }
    }
}

struct AuthenticationButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.blue))
            .cornerRadius(12)
            .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
