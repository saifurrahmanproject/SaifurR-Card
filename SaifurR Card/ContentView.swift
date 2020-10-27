//
//  ContentView.swift
//  SaifurR Card
//
//  Created by Tonoy Rahman on 2020-10-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.28, green: 0.86, blue: 0.98, opacity: 0.75)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Image("Saifur")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 5)
                    )
                
                
                Text("Saifur Rahman Tonoy")
                    .font(Font.custom("GreatVibes-Regular", size: 40))
                    .bold()
                    .foregroundColor(.black)
                Text("Computer Science Engineer")
                    .foregroundColor(.black).font(.system(size: 20))
                Divider()
                InfoView(text: "+1 5142953412", imageName: "phone.bubble.left")
                InfoView(text: "s.r.tonoy.p@gmail.com", imageName: "envelope.circle")
                InfoView(text: "GitHub - saifurrahmanproject", imageName: "icloud.and.arrow.up")
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    var text: String
    var imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 18)
            .frame(height: 60.0)
            .foregroundColor(.gray)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}




