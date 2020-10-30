//
//  ContentView.swift
//  MemorizeGame
//
//  Created by DIAO on 10/28/20Wednesday.
//

/*
    This version creates 4 Cards and arranges them horizontally. Using ForEach with ZStack then HStack it
    Displaying Card's Front or Back is based on the value set in CardView.isFaceUp
 
    End of Lecture 1 
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView()
            }
        }
    }
}

struct CardView: View {
    var body: some View {
        let isFaceUp: Bool = false
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
