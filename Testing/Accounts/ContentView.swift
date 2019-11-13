//
//  ContentView.swift
//  Testing
//
//  Created by Drew Thomas on 11/8/19.
//  Copyright © 2019 Drew Thomas. All rights reserved.
//

import SwiftUI


//addBackground

struct ContentView: View {
    
//    @State private var bg: BackgroundExtension
    @State var LoginPressed = false
    
    var body: some View {

        GeometryReader { geometry in
            
            NavigationView{
                
                ZStack{
                    Image("GUI_Background")
                        .resizable()
                        .frame(width: geometry.size.width, height: geometry.size.height+200)

                    VStack(spacing: 200){
                        Image("OrdinemLogoLong")
                        .resizable()
                        .frame(width: geometry.size.width - 20, height: geometry.size.height / 5.5)
                        
        
                        VStack(alignment: .center, spacing: 30){
                            NavigationLink(destination:
                                LoginView()
                            ){
                                Text("Login")
                                .font(Font.custom("LemonMilk", size: 22.0))
                            }
                            .frame(width: geometry.size.width, height: 75)
                            .background(Color.white)
    //                            .padding(65)
                            
                            NavigationLink(destination:
                                CreateAccountView()
                            ){
                                Text("Create Account")
                                .font(Font.custom("LemonMilk", size: 22.0))
                                .fontWeight(.bold)
                            }
                            .frame(width: geometry.size.width, height: 75)
                            
                            .background(Color.white)
    //                            .padding()
                        }
                            
                    }
                    
                }
//                .padding(.vertical, geometry.size.length / 10)


            }
        
        
        }
        
    }
    

}


func login(){
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
