//
//  Page4.swift
//  JOYS
//
//  Created by basmah saad on 02/09/2022.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    let text: String
    let handler: () -> Void = {
        print("Tapped item")
    }
}


struct MenuContent: View {
    let items: [MenuItem] = [
    MenuItem(text: "Home"),
    MenuItem(text: "Courses"),
    MenuItem(text: "Openings"),
    MenuItem(text: "Exhibitions")
    ]
    
    var body: some View {
        ZStack{
            Color(UIColor(red: 255/255, green:198/255, blue: 86/255, alpha: 1))
            
            VStack(alignment: .leading, spacing: 0) {
                ForEach(items) { item in
                    HStack{
                        Text(item.text)
                            .bold()
                            .font(.system(size: 27))
                            .multilineTextAlignment(.leading)
                           
                        Spacer()
                    }
                    
                    .onTapGesture {
                        
                    }
                    .padding()
                    
                    Divider()
                        .padding()
                }
                
                
                Spacer()
            }
            .padding(.top,15)
        }
    }
}

struct SideMenu: View {
    let width: CGFloat
    let menuOpen: Bool
    let toggleMenu: () -> Void
    
    var body: some View {
        ZStack{
            //Dimmed background view
            GeometryReader{ _ in
                EmptyView()
            }
            .background(Color.gray.opacity(0.8))
            .opacity(self.menuOpen ? 1 : 0)
            .animation(Animation.easeIn.delay(0.25))
            .onTapGesture {
                self.toggleMenu()
            }
            //menuCountent
            HStack{
                MenuContent()
                    .frame(width: width)
                    .offset(x: menuOpen ? 0 : -width)
                    .animation(.default)
                Spacer()
            }
        }
    }
}

struct Page4: View {
    @State var menuOpen = false
    
    var body: some View {
        ZStack{
            Color.theme.Color2.ignoresSafeArea()
        if !menuOpen {
            Button(action: {
                // Open menu
                    self.menuOpen.toggle()
                }, label: {
                    Image(systemName:"line.3.horizontal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height:40)
                        .foregroundColor(.black)
                        .padding(.trailing,340)
                        .padding(.bottom,760)
                })
             }
            SideMenu(width: UIScreen.main.bounds.width/1.8,
                     menuOpen: menuOpen,
                     toggleMenu: toggleMenu)
        
            VStack{
                Text("hello")
            }
            
            
            
            
     }
     .edgesIgnoringSafeArea(.all)
    }
    func toggleMenu() {
        menuOpen.toggle()
    }
}

struct Page4_Previews: PreviewProvider {
    static var previews: some View {
        Page4()
    }
}

