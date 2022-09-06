//
//  LP1.swift
//  JOYS
//
//  Created by basmah saad on 06/09/2022.
//

import SwiftUI

struct LP1: View {
    var photo: Photo 
    var body: some View {
        
        VStack{
            Image("Sec2")
                .resizable()
                .scaledToFit()
                .frame(width: 380, height: 200, alignment: .top)
                .cornerRadius(10)
            Text(photo.title)
                .font(.system(size: 26))
                .kerning(2)
            
            Text(photo.description)
                .padding()
            
            Spacer()
        }.padding()
        
        
        //
    }
}

struct LP1_Previews: PreviewProvider {
    static var previews: some View {
        LP1(photo: PhotoList.Courses.first!)
    }
}
