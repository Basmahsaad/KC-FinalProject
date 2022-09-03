//
//  BaseView.swift
//  JOYS
//
//  Created by basmah saad on 02/09/2022.
//

import SwiftUI

struct BaseView: View {
    @State var showMenu: Bool = false
    var body: some View {
        
        //
        NavigationView{
            
            HStack(spacing: 0){
                
                //
               sideMenu4(showMenu: $showMenu)
                
                VStack(spacing: 0) {
                    
                    TapView{
                        Text("")
                    }
                }
            }
            //
            //
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
        
        
        
        
        //
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
