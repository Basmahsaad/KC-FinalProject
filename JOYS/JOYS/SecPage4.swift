//
//  SecPage4.swift
//  JOYS
//
//  Created by basmah saad on 02/09/2022.
//

import SwiftUI

struct SecPage4: View {
    struct HomeView: View {
        var body: some View {
            NavigationView{
                ZStack{
                    Color.theme.Color1.ignoresSafeArea(edges:.bottom)
                    Color.theme.Color2.ignoresSafeArea(edges:.top)
                    
                    
                }
                .navigationTitle("home")
                
                //
            }
        }
        //
    }
    
    
        struct CategoriesView: View {
            var body: some View {
                NavigationView{
                    ZStack{
                        Color.theme.Color1.ignoresSafeArea(edges:.bottom)
                        Color.theme.Color2.ignoresSafeArea(edges:.top)
                    
                    }
                    .navigationTitle("Categories")
                    
                    //
                }
            }
            //
        }
    
    
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName:"house")
                        Text("Home")
                            
                            
                    }
                
                CategoriesView()
                    .tabItem {
                        Image(systemName:"square.grid.2x2")
                        Text("Categories")
                    }

            }
            .accentColor(Color.white)
        
        
        
        //
    }
}

struct SecPage4_Previews: PreviewProvider {
    static var previews: some View {
        SecPage4()
    }
}
