//
//  DescriptionView.swift
//  NavigationAndStuff
//
//  Created by Luis Esteban Haro on 16/04/24.
//

import SwiftUI

struct DescriptionView: View {

    let content: ConfigContent

    var body: some View {
        VStack {
            Image(content.image)
                .resizable()
                .scaledToFit()
            Text(content.description)
            Spacer()
        }
        .navigationTitle(content.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DescriptionView(content: ConfigContent(id: UUID(), name: "Name", description: "Description", image: "sunset"))
        }
    }
}
