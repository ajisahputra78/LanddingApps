//
//  ContentView.swift
//  LanddingApps
//
//  Created by Aji Sahputra78 on 01/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                VStack (spacing:20){
                Logo()
                FormBox()
            }
                .padding(.all,20)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Logo: View {
    var body: some View {
        VStack {
            Image("swift")
                .resizable()
                .frame(width:90, height:90)
                Text("Welcome")
                    .foregroundColor(Color.white)
            
        }
    }
}


struct FormBox: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack (alignment: .leading){
            
            Text("Username").font(.callout).bold()
            TextField("Username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button (action: {print("Hallo Button")}){
                HStack{
                Text("Sing In")
                Spacer()
                }
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        .padding(.all, 30)
        .background(Color.orange)
        .cornerRadius(20)
    
    }
}
