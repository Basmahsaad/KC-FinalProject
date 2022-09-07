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
        
        VStack(alignment:.center){
            Image(photo.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 420, height: 240, alignment: .top)
                .cornerRadius(20)
            Text(photo.title)
                .font(.system(size: 26))
                .kerning(2)
            
            Divider()
                
            
            Text(photo.description)
                .padding()
                
            
            HStack{
               Image(systemName:"clock.fill")
                Text(photo.description2)
            }
            HStack{
                Image(systemName:"mappin.and.ellipse")
                Text(photo.place)
            }
            
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
