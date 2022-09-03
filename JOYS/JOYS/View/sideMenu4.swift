//
//  sideMenu4.swift
//  JOYS
//
//  Created by basmah saad on 02/09/2022.
//

import SwiftUI

struct sideMenu4: View {
    @Binding var showMenu: Bool
    var body: some View {
       
            
        VStack(alignment: .leading, spacing: 0) {
            
            VStack(alignment: .leading, spacing: 15) {
       
            }
          
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 45) {
                    //
                  TapButtonn(title:"Courses")
                    TapButtonn(title: "Openings")
                    TapButtonn(title: "Exhibitions")
                }
                .padding()
                .padding(.leading)
                .padding(.top,35)
            }
            
            
        }
        //
        .frame(width: getRect().width - 160)
        .frame(maxHeight: .infinity)
        .background(Color.theme.Color2.ignoresSafeArea(.container,
                                                       edges: .vertical))
        .frame(maxWidth: .infinity , alignment: .leading)
    }
    
    @ViewBuilder
        func TapButtonn(title: String) -> some View {
            Button {
                
            } label: {
                HStack(spacing: 70){
                    VStack(spacing: 40) {
                    Text(title)
                        .font(.system(size: 25))
                        .font(.headline)
                        .frame(width: 200, height: 0, alignment: .leading)
                        .padding(.trailing,50)
                        
                       
                        
                        Divider()
                    }
                    
                    
                }
                .foregroundColor(.primary)
                
            }
            
        }
        
        
        
        
        //
}


struct sideMenu4_Previews: PreviewProvider {
    static var previews: some View {
        SecPage4()
    }
}

//
extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}

