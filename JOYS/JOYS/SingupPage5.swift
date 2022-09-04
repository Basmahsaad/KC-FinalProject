//
//  SingupPage5.swift
//  JOYS
//
//  Created by basmah saad on 02/09/2022.
//

import SwiftUI

struct SingupPage5: View {
    @State var userName = ""
    @State var yourEmailAddress = ""
    @State var yourPassword = ""
    
    var body: some View {
        ZStack{
            Color.theme.Color3.ignoresSafeArea()
            
            VStack{
                Text("SING UP")
                    .font(.system(size: 40))
                    .kerning(4)
                    .frame(width: 370, height: 50, alignment:.leading)
                Text("CREATE AN ACCOUNT TO CONTINUE")
                    .foregroundColor(Color.gray)
                    .kerning(2)
                    .frame(width: 350, height: 70, alignment:.topLeading)
                                .padding(.trailing)
                    //
                    Text(" YOUR NAME ")
                    .font(.system(size: 22))
                    .kerning(3)
                    .frame(width: 340, height: 50, alignment:.topLeading)
                TextField("Full name", text: $userName)
                    .font(.system(size: 20))
                    .frame(width: 315, height: 15, alignment: .leading)
                Divider()
                    .overlay(Color.theme.Color4)
                    .frame(width: 350, height: 5, alignment: .bottom)
                
                //
                Text("EMAIL ADDRESS")
                    .font(.system(size: 22))
                    .kerning(3)
                    .frame(width: 320, height: 60, alignment:.bottomLeading)
                
                TextField("Your email address", text: $yourEmailAddress)
                    .font(.system(size: 20))
                    .frame(width: 320, height: 0, alignment: .leading)
                    .padding(.top,30)
                
                Divider()
                    .overlay(Color.theme.Color4)
                    .frame(width: 350, height: 20)
                
                VStack{
                    Text("PASSWORD")
                        .font(.system(size: 22))
                        .kerning(3)
                        .frame(width: 320, height: 50, alignment: .bottomLeading)
                    
                    SecureField("Enter your password", text: $yourPassword)
                        .font(.system(size: 20))
                        .frame(width: 318, height:38 , alignment:.bottomLeading)
                    Divider()
                        .overlay(Color.theme.Color4)
                        .frame(width: 350, height: 5)
                }
                VStack{
                    NavigationLink("CREATE AN ACCOUNT",destination:SecPage4())
                        .font(.system(size: 20))
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 350, height: 70)
                        .background(Color.theme.Color1)
                        .cornerRadius(12)
                        .padding()
                    
                }.frame(width: 350, height: 150, alignment: .bottom)
                
            }.padding()
            
          
            
            
        }
        
        //
    }
}

struct SingupPage5_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SingupPage5()
                .preferredColorScheme(.dark)
            SingupPage5()
        }
    }
}
