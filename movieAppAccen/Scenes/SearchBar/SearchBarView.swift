//
//  SearchBarView.swift
//  movieAppAccen
//
//  Created by Orlando Velasco on 21-10-23.
//

import SwiftUI

struct SearchBarView: View {
    @State private var searchText = ""

    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .padding(12)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal)
            Image(systemName: "magnifyingglass")
                .padding(.trailing)
        }
    }
}

#Preview {
    SearchBarView()
}
