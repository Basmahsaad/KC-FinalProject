//
//  LPIn.swift
//  JOYS
//
//  Created by basmah saad on 07/09/2022.
//

import SwiftUI

struct LPIn: View {
    var body: some View {
       
        Home()
    }
}

struct LPIn_Previews: PreviewProvider {
    static var previews: some View {
        LPIn()
    }
}


struct HomePage : View {
    
    @Binding var x : CGFloat
    
    var body: some View {
        
       // Home View with custom nav  bar ..
      
        VStack{
            HStack{
                Button(action: {
                    
                    // openingmenu ..
                    withAnimation{
                        
                        x = 0
                    }
                    
                }) {
                    
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 27))
                        .foregroundColor(Color.theme.Color5)
                    
                }
                
                Spacer(minLength: 0)
                
                Text("ALL ACTIVITIES")
                    .font(.system(size: 30))
                    .kerning(2)
                    .fontWeight(.light)
                    .foregroundColor(.theme.Color5)
                
                Spacer(minLength: 0)
            }
            .padding()
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            
            Spacer()
        }
        // for drag  gesture  ..
        .contentShape(Rectangle())
        .background(Color.theme.Color1)
            .navigationBarHidden(true)
    }
}


struct Home : View {
    
    // for future use ..
    @State var width = UIScreen.main.bounds.width - 90
    // to hide view ..
    @State var x = -UIScreen.main.bounds.width + 90
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            
            HomePage(x: $x)

            SlideMenu()
                .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0),
                        radius: 5, x: 5, y: 0)
                .offset(x: x)
                .background(Color.black.opacity(x == 0 ? 0.5 : 0).ignoresSafeArea(.all, edges:.vertical).onTapGesture {
                    
                    // hiding the view when back  is ...
                    
                    withAnimation{
                        
                        x = -width
                    }
                })
        }
        // adding gesture or drag feature ....
        .gesture(DragGesture().onChanged({ (value) in
            
            withAnimation{
                if value.translation.width > 0 {
                   // disabling over  drag ...
                    
                    
                    if x < 0 {
                        
                        x = -width + value.translation.width
                    }
                }
                else{
                    x = value.translation.width
                }
            }
            
        }).onEnded({ (value) in
            
            withAnimation{
                
                // checking if  half the value of menu ...
                
                if -x < width / 2{
                    x = 0
                }
                else{
                    x = -width
                }
            }
        }))
    }
}

struct SlideMenu : View {
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var show = true
    
    var body: some View{
        
        HStack(spacing: 0){
            VStack(alignment: .leading){
                
                Image("logo")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                HStack(alignment: .top, spacing: 12) {
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text("Illavbi")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.theme.Color5)
                        
                        Text("@Illavbi")
                            .foregroundColor(.gray)
                        
                        // Follow
                       
                        .padding(.top,10)
                        
                        Divider()
                            .padding(.top,10)
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        withAnimation{
                            show.toggle()
                        }
                        
                    }) {
                        
                        Image(systemName: show ? "chevron.down" : "chevron.up")
                            .foregroundColor(Color.blue)
                    }
                }
                
                // Different Views ...
                
                VStack(alignment: .leading) {
                    // Menu  Buttons ...
                    
                    ForEach(menuButtons,id: \.self){ menu in
                        
                        Button(action: {
                            //  switch your actions or ...
                        }) {
                            
                            MenuButton(title: menu)
                        }
                        
                    }
                    
                    
                    Divider()
                        .padding(.top)
                    
                    Button(action: {}) {
                        Text("Settings and privacy")
                            .foregroundColor(.black)
                    }
                    .padding(.top)
                    
                    Button(action: {}) {
                        Text("Help centre")
                            .foregroundColor(.black)
                    }
                    .padding(.top,20)
                    
                    Spacer(minLength: 0)
                    
                }
                //hiding this view ...
                .opacity(show ? 1 : 0 )
                .frame(height: show ? nil : 0)
                
                
                // Alternative View For Up ...
                
                VStack(alignment: .leading){
                    Button(action: {}) {
                    
                        Text("For your inquiries, please contact us 965+8645346")
                            .foregroundColor(.theme.Color5)
                    }
                    .padding(.bottom)
                    
                    Button(action: {}) {
                    
                        Text("Join us on Instagram @JOYSAPP")
                            .foregroundColor(.theme.Color5)
                    }
                    Spacer(minLength: 0)
                }
                .opacity(show ? 0 : 1 )
                .frame(height: show ? 0 : nil)
                        
                     
                
                
            }
            .padding(.horizontal,20)
            // since ..
            .padding(.top, edges!.top == 0 ? 15 : edges?.top)
            .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
            // default .. ....
            .frame(width: UIScreen.main.bounds.width - 90)
            .background(Color.white)
            .ignoresSafeArea(.all, edges: .vertical)
            
            Spacer(minLength: 0)
        }
        
    }
    
}


struct FollowView : View {
    var count : Int
    var title : String
    
    var body: some View {
        
        HStack{
            
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.theme.Color5)
            
            Text(title)
                .foregroundColor(.gray)
                
        }
    }
}

var menuButtons = ["Courses", "Openings", "Exhibitions"]

struct MenuButton : View {
    
    var title : String
    var body: some View {
        HStack(spacing: 15) {
             
            // both title and ....
           
            
            Text(title)
                .foregroundColor(.black)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical,12)
    }
}
