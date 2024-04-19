//
//  ConfigSection.swift
//  NavigationAndStuff
//
//  Created by Luis Esteban Haro on 16/04/24.
//

import SwiftUI

struct ConfigView: View {
    
    let content: ConfigContent
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(content.name)
                .font(.headline)
            Text(content.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }.padding()
    }
}

struct ConfigView_Previews: PreviewProvider {
    static var previews: some View {
        ConfigView(content: MockData.generateMockData()[1].content[1])
    }
}
