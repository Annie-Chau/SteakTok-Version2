//
//  DonenessView.swift
//  SteakTok-Version2
//
//  Created by Nguyen Dinh Minh Chau on 22/2/25.
//

import SwiftUI

struct DonenessView: View {
    private let donenessOptions: [String] = [
        "cool-and-juicy",
        "perfectly-pink",
        "balanced-bite",
        "almost-there",
        "bold-and-charred"
    ]
    @Binding var stackPaths: [String]
    
    var body: some View {
        ZStack {
            Color.mainBackground.edgesIgnoringSafeArea(.all)
            
            VStack {
                TabbarView(stackPaths: $stackPaths)
                
                Spacer()
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        Text("Pick Your Perfect")
                            .foregroundColor(.steakRed)
                            .font(.custom("hangyaboly", size: 40))
                            .padding(.horizontal, 30)
                            .padding(.top, 50)
                        Text("Doneness")
                            .foregroundColor(.steakRed)
                            .font(.custom("hangyaboly", size: 40))
                            .padding(.horizontal, 30)
                        
                        ForEach(donenessOptions, id: \.self) { option in
                            ZStack {
                                Color.white
                                Image(option)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300, height: 190)
                            }
                            .frame(width: 300, height: 200)
                            .cornerRadius(20)
                            .padding(.vertical, 15)
                        }
                    }
        
                }
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    DonenessView(stackPaths: .constant([]))
}
