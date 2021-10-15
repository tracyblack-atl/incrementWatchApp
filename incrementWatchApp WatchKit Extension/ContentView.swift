//
//  ContentView.swift
//  incrementWatchApp WatchKit Extension
//
//  Created by Tracy Black on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    @State var currentColor: Color = Color.red
    
    let colors = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple,
        Color.pink
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                self.count += 1
                self.currentColor = self.colors.randomElement()!
            }) {
                Text("\(count)")
            }
            .foregroundColor(currentColor)
            .clipShape(Rectangle())
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
        }
    }
}
