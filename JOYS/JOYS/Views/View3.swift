//
//  View3.swift
//  JOYS
//
//  Created by basmah saad on 05/09/2022.
//

import Foundation
import SwiftUI

struct View3: View {
    var body: some View {
        ScrollView{
        ZStack{
            Color.theme.Color3.edgesIgnoringSafeArea(.all)
            Image("Exh1")
                .resizable()
                .frame(width: 400, height: 250, alignment:.top)
                .cornerRadius(20)
            Text("Exhibitions")
                .foregroundColor(.white)
                .font(.system(size: 60))
                .fontWeight(.light)
            
        }.padding()
        }
        
        
        
   //
    }
}
