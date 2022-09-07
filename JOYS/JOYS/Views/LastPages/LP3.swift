//
//  LP3.swift
//  JOYS
//
//  Created by basmah saad on 07/09/2022.
//

import SwiftUI

struct LP3: View {
    var photo: Photo
    var body: some View {
        
        ScrollView{
        VStack(alignment:.center){
            Image(photo.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 440, height: 260, alignment: .top)
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
            .frame(width: 380, height: 900, alignment: .top)
        
    }
        
        
        
        
        //
    }
}

struct LP3_Previews: PreviewProvider {
    static var previews: some View {
        LP3(photo: PhotoList.Opening.first!)
    }
}
