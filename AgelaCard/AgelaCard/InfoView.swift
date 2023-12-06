//
//  InfoView.swift
//  AgelaCard
//
//  Created by JuSun Kang on 12/6/23.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        Capsule()
            .frame(height: 40.0)
            .foregroundColor(.white)
            .overlay {
                HStack {
                    Image(systemName: imageName)
                        .foregroundStyle(.green)
                    Text(text)
                }
            }
            .padding(.all)
    }
}

#Preview {
    InfoView(text: "+44 123 456 789", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
