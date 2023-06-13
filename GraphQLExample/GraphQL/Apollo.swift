//
//  Apollo.swift
//  GraphQLExample
//
//  Created by Shubham Deshmukh on 11/06/23.
//

import Foundation

import SDAPI
import Apollo

class Network {
    static let shared = Network()
    
    lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000/")!)
    
    private init(){}
}

class BooksViewModel {
    
    func populateBooksArray() {
        
        Network.shared.apollo.fetch(query: GetBooksQuery()) { result in
                switch result {
                case .success(let graphQLResults):
                    print(graphQLResults)
                case .failure(let error):
                    print(error)
                }
            }
    }
}
