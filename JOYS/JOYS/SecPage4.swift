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
                    Color.theme.Color3.ignoresSafeArea()
                    
                    ScrollView{
                        VStack(spacing:5){
                            Text("ALL ACTIVITIES")
                                .font(.system(size:30))
                                .kerning(2)
                                .frame(width: 370, height: 35,alignment: .leading)
                            Divider()
                                .overlay(Color.theme.Color4)
                                .frame(width: 380, height: 1)
                            }.padding()
                        
                                Image("Sec1")
                                    .resizable()
                                    .frame(width: 370, height: 220)
                                    .cornerRadius(20)
                        ZStack{
                                Image("Sec3")
                                    .resizable()
                                    .frame(width: 370, height: 220)
                                    .cornerRadius(20)
                            Text("TEXTURE ART")
                                .font(.system(size: 37))
                                .kerning(2)
                                .foregroundColor(.white)
                                .frame(width: 330, height: 180, alignment: .bottomLeading)
                        }
                
                        VStack{
                            Divider()
                                .overlay(Color.theme.Color4)
                                .frame(width: 380, height: 1)
                            ZStack{
                            Image("V3")
                                    .resizable()
                                    .frame(width: 370, height: 220)
                                    .cornerRadius(20)
                                Text("KUWAIT INTERNATIONAL ")
                                    .font(.system(size: 23))
                                    .kerning(2)
                                    .foregroundColor(.white)
                                    .frame(width: 330, height: 90, alignment: .bottomLeading)
                                Text("BOOK FAIR")
                                    .font(.system(size: 39))
                                    .kerning(2)
                                    .foregroundColor(.white)
                                    .frame(width: 330, height: 180, alignment: .bottomLeading)
                            }
                        }
                        
                        
                        //
                    }
                    .navigationBarBackButtonHidden(true)
                    
                }
                
           
                
                
                //
            
        }
        //
    }
    
    
        struct CategoriesView: View {
            @State var currentTab: Int = 0
            var body: some View {
                
                ZStack(alignment: .top){
                        Color.theme.Color1.ignoresSafeArea(edges:.bottom)
                        Color.theme.Color3.ignoresSafeArea(edges:.top)
                    
                        
                        TabView(selection:self.$currentTab) {
                            View1().tag(0)
                            View2().tag(1)
                            View3().tag(2)
                            View4().tag(3)
                        }
                        .tabViewStyle(.page(indexDisplayMode:.always))
                        .edgesIgnoringSafeArea(.top)
                        
                        TabBarView(currentTab: self.$currentTab)
                        
                        
                       //start
                     
                    }
                    
                    //
                
            }
            //
        }
    struct TabBarView: View {
        @Binding var currentTab: Int
        @Namespace var namespace
        
        var tabBarOption: [String] = ["Courses","Openings","Exhibitions","NCCAL"]
        var body: some View {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(Array(zip(self.tabBarOption.indices,
                                      self.tabBarOption)),
                            id: \.0,
                            content: {
                        index, name in
                        TabBarItem(currentTab: self.$currentTab,
                                   namespace: namespace.self,
                                   tabBarItemName: name,
                                   tab:index)
                    })
                    
                }
                .padding(.horizontal)
            }
            .background(Color.theme.Color1)
            .frame(height: 100)
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    //mine2
    struct TabBarItem: View {
        @Binding var currentTab: Int
        let namespace: Namespace.ID
        
        var tabBarItemName: String
        var tab: Int
        
        var body: some View{
            Button{
                self.currentTab = tab
            } label: {
                VStack {
                    Spacer()
                    Text(tabBarItemName)
                    if currentTab == tab {
                        Color.theme.Color5
                            .frame(height:2)
                .matchedGeometryEffect(id: "underline",
                                       in: namespace,
                                       properties: .frame)
                    } else {
                        Color.clear.frame(height:3)
                    }
                }
                .animation(.spring(), value: self.currentTab)
            }
            .buttonStyle(.plain)
        }
    }
    
    
    
    //
   
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
        Group {
            SecPage4()
                .preferredColorScheme(.light)
            SecPage4()
                .preferredColorScheme(.dark)
        }
    }
}
