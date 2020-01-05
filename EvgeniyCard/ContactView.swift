//
//  ContactView.swift
//  EvgeniyCard
//
//  Created by Evgeniy Uskov on 11.10.2019.
//  Copyright © 2019 Evgeniy Uskov. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 300, height: 50)
            .foregroundColor(.init(UIColor(red: 0.173, green: 0.243, blue: 0.314, alpha: 1)))
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .font(.system(size: 24, weight: .regular))
                        .foregroundColor(.green)//.init(UIColor(red: 0.945, green: 0.769, blue: 0.059, alpha: 1)))
                    Text(text)
                        .font(.system(size: 24, weight: .regular))
                        .foregroundColor(.init(UIColor(red: 0.945, green: 0.769, blue: 0.059, alpha: 1)))
            })
            .padding(.all)
    }
}


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
