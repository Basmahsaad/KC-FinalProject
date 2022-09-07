//
//  SecPage4.swift
//  JOYS
//
//  Created by basmah saad on 02/09/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack{
                
                
            }
        }
    }
}

struct SecPage4: View {
    var body: some View {
        ZStack{
            TabView{
              Text("Home")
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Text("Categories")
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Categories")
                    }
                
            }
        }
        
        
        
        //
    }
}

struct SecPage4_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
