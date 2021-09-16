//
//  HomeView.swift
//  Ellifit
//
//  Created by Rudrank Riyam on 05/05/21.
//

import SwiftUI
import GoogleSignIn

struct HomeView: View {
    @EnvironmentObject var viewModel: AuthenticationViewModel
    
    private let user = GIDSignIn.sharedInstance().currentUser
    
    var body: some View {
        
            VStack(alignment: .leading) {
                HStack {
                    NetworkImage(url: user?.profile.imageURL(withDimension: 200))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100, alignment: .center)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading) {
                        Text("Hallo, \(user?.profile.name ?? "caca")")
                            .font(.headline)
                        
                        Text("2 Task for Today")
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                        
                        Button("Sign out") {
                            viewModel.signOut()
                        }
                        
                    }
                    
                    Spacer()
                }
                
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(12)
                .padding()
                .background(Color.blue)
                
                
                Spacer()
                
                
                FormBox()
                
            }
//            safe area
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
    }
}

/// A generic view which is helpful for showing images from the network.
struct NetworkImage: View {
    let url: URL?
    
    var body: some View {
        if let url = url,
           let data = try? Data(contentsOf: url),
           let uiImage = UIImage(data: data) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct FormBox: View {
    
    var body: some View {
        HStack{
            Image("i1")
            .padding()
            .cornerRadius(10)
            Spacer()
            Image("i2")
            .padding()
            .cornerRadius(10)
            Spacer()
            Image("i3")
            .padding()
            .cornerRadius(10)
        }
        .background(Color.white)
        .frame(maxWidth: .infinity)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
        
    }
    
}
