//
//  IntialScreen.swift
//  DT_Login1
//
//  Created by Devang Helios on 26/06/23.
//

import SwiftUI

struct IntialScreen: View {
    var body: some View {
        ZStack(alignment: .top){
            Color(.blue).edgesIgnoringSafeArea(.all)
            VStack(){
                Image("login_bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                VStack(){
                    Button("Log in", action: ({}))
                        .frame(maxWidth: .infinity).padding()
                        .background()
                        .foregroundColor(.black).cornerRadius(12).padding(.bottom,16)
                    HStack{
                        Text("Don't have an account?").foregroundColor(.white)
                        Button{}label: {
                            Text("Sign Up").foregroundColor(.white).fontWeight(.bold)
                        }
                    }
                        
                }.padding(20)
                Spacer()
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

struct IntialScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntialScreen()
    }
}
