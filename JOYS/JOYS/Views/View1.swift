//
//  View1.swift
//  JOYS
//
//  Created by basmah saad on 05/09/2022.
//

import Foundation
import SwiftUI

struct View1: View {
    var photos: [Photo] = PhotoList.Courses
    var body: some View {
        
        List(photos, id: \.id){ photo in
                NavigationLink(destination:LP1(photo:photo), label: {
                    HStack{
                       Image("V2")
                            .resizable()
                            .scaledToFit()
                            .frame(height:100)
                            .cornerRadius(15)
                        
                        VStack(alignment:.leading){
                        Text("TEXTURE ART")
                                .font(.system(size: 30))
                                .foregroundColor(.theme.Color5)
                                .fontWeight(.light)
                       Text(" By Noor Design")
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
