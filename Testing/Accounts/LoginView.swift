//
//  LoginView.swift
//  Testing
//
//  Created by Drew Thomas on 11/8/19.
//  Copyright © 2019 Drew Thomas. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
            Image("GUI_Background")
                .resizable()
                .frame(width: geometry.size.width, height: geometry.size.height+200)
                
                
                VStack(spacing: 75){
                    Image("OrdinemLogoLong")
                    .resizable()
                    .frame(width: geometry.size.width - 20, height: geometry.size.height / 5.5)
                    
                    TextField("Email", text: self.$email)
                        .padding(25)
                        .background(Color.white)
                        .font(Font.custom("LemonMilk", size: 22.0))

                    
                    SecureField("Password", text: self.$password)
                        .padding(25)
                        .background(Color.white)
                        .font(Font.custom("LemonMilk", size: 22.0))
                    
                    
                    Button(action:{
                        //TODO
                    }){
                        Text("Submit")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.white)
                            .cornerRadius(40)
                        .foregroundColor(.blue)
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                        )
                        
                        
                    }
                    
                    .font(Font.custom("LemonMilk", size: 22.0))
                    .padding(25)
                    
                    
                    


                    
                }
                
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
