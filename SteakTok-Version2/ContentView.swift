//
//  ContentView.swift
//  SteakTok-Version2
//
//  Created by Nguyen Dinh Minh Chau on 22/2/25.
//

import SwiftUI

struct ContentView: View {

    @State private var stackPaths: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPaths) {
            ZStack {
                Image("home-background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    TabbarView(stackPaths: $stackPaths)
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            stackPaths.append("DonenessView")
                        } label: {
                            Text("Let's Meat!")
                                .padding(8)
                                .font(.custom("hangyaboly", size: 30))
                                .foregroundColor(.mainBackground)
                                .background(.steakRed)
                                .cornerRadius(10)
                                .shadow(color: .steakRed, radius: 5, y: 5)
                                .padding(.all, 35)
                        }
                        
                        Spacer()
                    }
                    
                }
                
                
            }
            .navigationDestination(for: String.self) { path in
                if path == "DonenessView" {
                    DonenessView(stackPaths: $stackPaths)
                }
            }
        }
        
        
    }
    /*
     init() {
     for familyName in UIFont.familyNames {
     print(familyName)
     
     for fontName in UIFont.fontNames(forFamilyName: familyName) {
     print("--\(fontName)")
     }
     }
     }
     */

}

#Preview {
    ContentView()
}
