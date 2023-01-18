//
//  ProfileView.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 17.01.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .frame(width: 100, height: 100)
        
            VStack (spacing: 16) {
                VStack (spacing: 0){
                    TextField("EmailPhaced".localized, text: $email)
                        .modifier(CustoumTexfied())

                    SecureField("PasswordText".localized, text: $password)
                        .modifier(CustoumTexfied())
                }
                .padding(.top, 50)
            
                Button( action: {
                    //
                }, label: {
                    Text("Login".localized)
                        .modifier(TextButton())
                })
                .modifier(CustoumButton())
            }
            .padding([.trailing, .leading], 16)
        }
        .edgesIgnoringSafeArea(.all)
    }
}
