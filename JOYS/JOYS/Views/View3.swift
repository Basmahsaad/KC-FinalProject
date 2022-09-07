//
//  View3.swift
//  JOYS
//
//  Created by basmah saad on 05/09/2022.
//

import Foundation
import SwiftUI

struct View3: View {
    var photos: [Photo] = PhotoList.Exhibitions
    var body: some View {
        
        List(photos, id: \.id){ photo in
                NavigationLink(destination:LP2(photo:photo), label: {
                    HStack{
                        Image(photo.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height:100)
                            .cornerRadius(15)
                        
                        VStack(alignment:.leading){
                            Text(photo.title)
                                .font(.system(size: 25))
                                .foregroundColor(.theme.Color5)
                                .fontWeight(.light)
                            Text(photo.Eby)
                                .font(.system(size: 17))
                                .font(.subheadline)
                                .foregroundColor(.theme.Color4)
                    }
                    }
                })
            
        }
        
   //
    }
}
