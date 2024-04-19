//
//  ContentView.swift
//  NavigationAndStuff
//
//  Created by Luis Esteban Haro on 16/04/24.
//

import SwiftUI


struct ConfigSection: Identifiable {
    let id: UUID
    let name: String
    let content: [ConfigContent]
}

struct ConfigContent: Identifiable, Hashable {
    let id: UUID
    let name: String
    let description: String
    let image: String
}

class MockData {
    static func generateMockData() -> [ConfigSection] {
        var sections = [ConfigSection]()
        
        // Mock data for the first section
        let section1 = ConfigSection(id: UUID(), name: "Section 1", content: [
            ConfigContent(id: UUID(), name: "Item 1", description: "Description for Item 1", image: "sunset"),
            ConfigContent(id: UUID(), name: "Item 2", description: "Description for Item 2", image: "maple"),
            ConfigContent(id: UUID(), name: "Item 3", description: "Description for Item 3", image: "alps")
        ])
        sections.append(section1)
        
        // Mock data for the second section
        let section2 = ConfigSection(id: UUID(), name: "Section 2", content: [
            ConfigContent(id: UUID(), name: "Item 4", description: "Description for Item 4", image: "rock"),
            ConfigContent(id: UUID(), name: "Item 5", description: "Description for Item 5", image: "astronomy")
        ])
        sections.append(section2)
        
        // Add more sections if needed
        
        return sections
    }
}


struct ContentView: View {

    let myMockData = MockData.generateMockData()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(myMockData) { datum in
                    Section(datum.name){
                        ForEach(datum.content) { content in
                            NavigationLink() {
                                DescriptionView(content: content)
                            } label: {
                                ConfigView(content: content)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Configs")
//            .navigationBarTitleDisplayMode(.inlinex)
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
