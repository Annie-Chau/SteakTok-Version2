//
//  TabbarView.swift
//  SteakTok-Version2
//
//  Created by Nguyen Dinh Minh Chau on 22/2/25.
//

import SwiftUI

struct TabbarView: View {
    @Binding var stackPaths: [String]
    var body: some View {
        ZStack {
            Color.mainBackground
            
            VStack {
                HStack {
                    Button {
                        stackPaths.removeAll()
                    } label: {
                        Text("Home")
                            .font(.custom("hangyaboly", size: 30))
                            .foregroundColor(.steakRed)
                    }
                    .padding(.horizontal, 20)
                    
                    Button {
                        // Navigate to recipe
                    } label: {
                        Text("Recipe")
                            .font(.custom("hangyaboly", size: 30))
                            .foregroundColor(.steakRed)
                    }
                    
                    Spacer()
                    
                    Button {
                        // Navigate to about
                    } label: {
                        Text("About.")
                            .font(.custom("hangyaboly", size: 30))
                            .foregroundColor(.steakRed)
                    }
                    .padding(.trailing, 20)
                }
                
                Divider()
                    .frame(height: 0.5)
                    .background(Color.steakRed)
                    .padding(.horizontal, 22)
                    
            }
            
        }
        .frame(height: 70)
    }
}

#Preview {
    TabbarView(stackPaths: .constant([]))
}
