//
//  LoginScreen.swift
//  DT_Login1
//
//  Created by Devang Helios on 26/06/23.
//

import SwiftUI

struct LoginScreen: View {
    @State private var username:String = ""
    @State private var password:String = ""
    var body: some View {
        VStack(spacing:40){
            Image("logo").resizable().scaledToFit().frame(width: UIScreen.main.bounds.width*0.5)
            Text("Welcome Back!")
                .font(.largeTitle)
                .fontWeight(.bold)
            VStack(spacing:8){
                HStack{
                    TextField("Username", text: $username)
                }.padding(12).overlay(
                    RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
                )
                HStack{
                    TextField("Password", text: $password)
                }.padding(12).overlay(
                    RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
                )
            }
            Button{}label: {
                Text("Login")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            }.frame(maxWidth: .infinity)
                .frame(height: 44)
                .background(.blue)
                .cornerRadius(12)
            
            HStack{
                VStack{Divider()}
                Text("OR")
                VStack{Divider()}
            }
            HStack(alignment: .center){
                VStack{Button(action: {}){
                    Image("logo_fb").resizable().aspectRatio(contentMode: .fit).padding(8)
                }}.overlay(
                    RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
                )
                
                
                VStack{Button(action: {}){
                    Image("logo_google").resizable().aspectRatio(contentMode: .fit).padding(8)
                }}.overlay(
                    RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
                )
                VStack{Button(action: {}){
                    Image("logo_apple").resizable().aspectRatio(contentMode: .fit).padding(8)
                }}.overlay(
                    RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
                )
            }.frame(height:40)
            HStack{
                Text("Don't have an account?").foregroundColor(.black)
                Button{}label: {
                    Text("Sign Up").foregroundColor(.black).fontWeight(.bold)
                }
            }
            
            
        }.padding(16)
        
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
