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
            Image("44")
                .resizable()
                .ignoresSafeArea()
            Text("LOG IN")
            
                .font(.system(size: 37))
                .kerning(4)
                .frame(width: 320, height: 540, alignment:.topLeading)
             //
            VStack {
                TextField("EMAIL ADDRESS ", text: $emailname)
                    .font(.title2)
                    .font(.system(size: 20))
                    .padding(.leading,30)
                    .background(.clear)
                Divider()
                    .frame(height:2)
                    .overlay(.black.opacity(0.3))
                 .frame(width: 350, height: 30, alignment: .topLeading)
                 //
            SecureField("PASSWORD", text: $password)
                    .font(.title2)
                    .font(.system(size: 20))
                    .padding(.leading,30)
                    .background(.clear)
                Divider()
                    .frame(height:2)
                    .overlay(.black.opacity(0.3))
                    .frame(width: 350, height: 30, alignment: .topLeading)
            }.padding()
                .frame(width:400, height: 370,alignment: .top)
    }
        
        
        
        //
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
    }
}
