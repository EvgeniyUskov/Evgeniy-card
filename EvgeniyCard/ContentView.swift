//
//  ContentView.swift
//  EvgeniyCard
//
//  Created by Evgeniy Uskov on 11.10.2019.
//  Copyright © 2019 Evgeniy Uskov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Color(red: 0.945, green: 0.769, blue: 0.059, opacity: 0.5)
            Color(UIColor(red: 0.945, green: 0.769, blue: 0.059, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Evgeniy").resizable()    .aspectRatio(contentMode: .fill)
                    .frame(width: 270, height: 270, alignment: .top)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color(UIColor(red: 0.173, green: 0.243, blue: 0.314, alpha: 1)), lineWidth: 5))
                Text("Evgeniy Uskov")
                    .font(Font.custom("Pacifico-Regular", size: 40)) // "Pacifico-Regular" case insensitive!
                    .foregroundColor(.init(UIColor(red: 0.173, green: 0.243, blue: 0.314, alpha: 1)))
                Text("iOS Developer")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.init(UIColor(red: 0.173, green: 0.243, blue: 0.314, alpha: 1)))
                Divider()
                ContactView(text: "+7 913 712 63 04", imageName: "phone.fill")
                ContactView(text: "uskoves@gmail.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

