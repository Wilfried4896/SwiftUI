//
//  MovieList.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 17.01.2023.
//

import SwiftUI

struct MovieContentView: View {
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(getDataFromBundle, id: \.self) { movie in
                    NavigationLink {
                        MovieDetail(movieDetail: movie)

                    } label: {
                        MovieRow(movie: movie)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("movies".localized)
        }
    }
}

struct MovieContentView_Preview: PreviewProvider {
    static var previews: some View {
        MovieContentView()
    }
}
