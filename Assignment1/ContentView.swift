//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct ContentView: View {
    
    let icons = ["🤣", "😜", "😀", "🤩", "😂"]
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(icons, id: \.self) {
                        emoji in myCounter(icon: emoji, count: 0)
                    }
                    
                }
            }
            .navigationBarTitle("Emoji Counter", displayMode:.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct myCounter: View {
    var icon: String
    @State var count : Int
    
    var body: some View {
        HStack {
            Text(icon)
            Text("Counter: \(count)")
            Spacer()
            ZStack {
                Image(systemName: "plus")
                    .onTapGesture {
                        count += 1
                    }
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.red, lineWidth: 2)
            }
            .frame(width: 30, height: 30)
            ZStack {
                Image(systemName: "minus")
                    .onTapGesture {
                        count -= 1
                    }
                RoundedRectangle(cornerRadius: 10).stroke(Color.red, lineWidth: 2)
            }
            .frame(width: 42, height: 30)
            
        }
        .padding()
        .foregroundColor(.red)
    }
}
