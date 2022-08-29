//
//  ContentView.swift
//  JOYS
//
//  Created by basmah saad on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("33")
                    .resizable()
                    .ignoresSafeArea()
                
                VStack{
                    Text("WELCOME")
                        .font(.system(size: 37))
                        .kerning(5)
                        .frame(width: 300, height: 50, alignment: .leading)
                        .padding(.trailing,40)
                    Text("TO THE JOYS")
                        .font(.system(size: 19))
                        .kerning(2)
                        .frame(width: 230, height: 40, alignment: .leading)
                        .padding(.trailing,85)
               
                    VStack{
                        Text("HERE WE HAVE COMPILED ALL THE ACTIVITIES THAT YOU CAN FIND .")
                            .baselineOffset(6)
                            .font(.system(size: 17))
                            .kerning(2)
                            .frame(width: 350, height: 90, alignment: .leading)
                            .padding(.leading,30)
                    }
                }.padding(.bottom,400)
                
                
                HStack {
                    NavigationLink("GET START",destination: Text("HI"))
                        .font(.system(size: 29))
                        .foregroundColor(.black)
                    Image(systemName:"chevron.right")
                        .font(.system(size: 29))
                    
                }.frame(width: 300, height: 50, alignment:.leading)
                    .padding(.top,200)
               
                
                //
            }
        }
        
        //
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
