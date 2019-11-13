//
//  CreateAccountView.swift
//  Testing
//
//  Created by Drew Thomas on 11/8/19.
//  Copyright © 2019 Drew Thomas. All rights reserved.
//

import SwiftUI

struct CreateAccountView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        GeometryReader { geometry in
        ZStack{
        Image("GUI_Background")
            .resizable()
            .frame(width: geometry.size.width, height: geometry.size.height+200)
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
