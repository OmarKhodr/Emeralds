//
//  ContentView.swift
//  Emeralds
//
//  Created by Omar Khodr on 5/24/21.
//

import SwiftUI

struct ContentView: View {
    let snippets: [Snippet]
    
    var body: some View {
        List {
            ForEach(snippets) { snippet in
                VStack(alignment: .leading) {
                    HStack(alignment: .firstTextBaseline) {
                        HStack(alignment: .top) {
                            Image(systemName: "person.circle.fill")
                                .font(.largeTitle)
                            VStack(alignment: .leading) {
                                if let name = snippet.authorName {
                                    Text(name)
                                }
                                if let handle = snippet.authorHandle {
                                    Text("@\(handle)")
                                        .font(.caption)
                                        .opacity(0.6)
                                }
                            }
                        }
                        Spacer()
                        Text("from \(snippet.source.name)")
                            .font(.caption2)
                            .opacity(0.6)
                    }
                    .padding(.bottom, 2)
                    
                    Text(snippet.text)
                        .fontWeight(.medium)
                }
                .foregroundColor(snippet.source.color.accessibleFontColor)
                .padding([.top, .bottom])
                .listRowBackground(snippet.source.color)
            }
        }
        .navigationTitle(Text("All Snippets"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(snippets: Snippet.data)
        }
    }
}
