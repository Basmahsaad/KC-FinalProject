//
//  Page2.swift
//  JOYS
//
//  Created by basmah saad on 31/08/2022.
//

import SwiftUI

struct Page2: View {
    @State var emailname: String = ""
    @State var password: String = ""
    var body: some View {
        
            ZStack{
                Image("22")
                    .resizable()
                    .ignoresSafeArea()
                Text("LOG IN")
                    .font(.system(size: 37))
                    .kerning(4)
                    .frame(width: 340, height: 580, alignment:.topLeading)
                 //
                VStack {
                    TextField("EMAIL ADDRESS ", text: $emailname)
                        .keyboardType(.emailAddress)
                        .font(.title2)
                        .font(.system(size: 20))
                        .padding(.leading,30)
                        .background(.clear)
                    Divider()
                        .frame(height:2)
                        .overlay(Color.theme.Color5)
                     .frame(width: 350, height: 30, alignment: .topLeading)
                     //
                SecureField("PASSWORD", text: $password)
                        .font(.title2)
                        .font(.system(size: 20))
                        .padding(.leading,30)
                        .background(.clear)
                    Divider()
                        .frame(height:2)
                        .overlay(Color.theme.Color5)
                        .frame(width: 350, height: 30, alignment: .topLeading)
                }.padding(.bottom)
                    .frame(width:400, height: 370,alignment: .top)
                    .padding(.bottom,30)
                //
                
                VStack {
                  Text("Forget Password?")
                        .foregroundColor(Color.gray)
                        .frame(width: 346, height: 88, alignment: .topTrailing)
                    
                    NavigationLink("LOG IN",destination:SecPage4())
                        .font(.system(size: 30))
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 60)
                        .background(Color.theme.Color1)
                        .cornerRadius(10)
                    
                }.padding(.bottom,0)
              
                
                
                
                VStack{
                    Text("DON'T HAVE AN ACCOUNT?")
                        .font(.system(size: 20))
                        .fontWeight(.light)
                        .kerning(2)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 70, alignment:.bottom)
                        .padding(.top,490)
                    
                    NavigationLink("SING UP !",destination:SingupPage5())
                        .font(.system(size: 21))

                        .foregroundColor(.white)
                        

                }
                
                
                //
            }
            .navigationBarBackButtonHidden(true)
        
        
        
        
        //
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Page2()
                .preferredColorScheme(.dark)
            Page2()
        }
    }
}
