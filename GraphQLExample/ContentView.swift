//
//  ContentView.swift
//  GraphQLExample
//
//  Created by Shubham Deshmukh on 11/06/23.
//

import SwiftUI


class ViewModel {
    
    
    
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .onAppear(){
            let obj = BooksViewModel()
            obj.populateBooksArray()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
