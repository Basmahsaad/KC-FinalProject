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
            
                ZStack{
                    Color.theme.Color1.ignoresSafeArea(edges:.bottom)
                    Color.theme.Color3.ignoresSafeArea(edges:.top)
                    
                   
                    
                    
                    ScrollView{
                        VStack{
                            ScrollView(.horizontal){
                                Text("hi")
                                
                                    .font(.system(size: 29))
                                    .padding()
                            }
                            
                            Divider()
                                .frame(width: 370, height: 1, alignment: .top)
                                .overlay(.gray)
                                .padding(.bottom)
                           
                            Text("HBHSDBVHBV")
                            Text("HBHSDBVHBV")
                            Text("HBHSDBVHBV")
                            Text("HBHSDBVHBV")
                            Text("HBHSDBVHBV")
                            Text("HBHSDBVHBV")
                            Text("HBHSDBVHBV")
                            
                            
                        }
                    }
                    .navigationBarBackButtonHidden(true)
         
                    
                }
                
           
                
                
                //
            
        }
        //
    }
    
    
        struct CategoriesView: View {
            var body: some View {
                
                    ZStack{
                        Color.theme.Color1.ignoresSafeArea(edges:.bottom)
                        Color.theme.Color3.ignoresSafeArea(edges:.top)
                    
                        
                        
                        ScrollView{
                            VStack{
                        Text("hi")
                        
                        
                        }
                    }
                    
                        
                        
                        
                     
                    }
                    
                    
                    //
                
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
            .preferredColorScheme(.dark)
    }
}
