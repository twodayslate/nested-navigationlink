//
//  ContentView.swift
//  nested-navs
//
//  Created by Zachary Gorak on 9/13/20.
//

import SwiftUI

struct CellView: View {
    var body: some View {
        VStack {
            Text("Not a link start")
            NavigationLink(destination: NamedView(name: "inner")) {
                Text("You can't click this NavigationLink")
            }
            Text("Not a link end")
        }
    }
}

struct NamedView: View {
    var name: String
    var body: some View {
        Text(name).navigationTitle(name)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<2) { ind in
                NavigationLink(destination: NamedView(name: "\(ind)")) {
                    CellView()
                }
            }.navigationTitle("NavigationLinks")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
