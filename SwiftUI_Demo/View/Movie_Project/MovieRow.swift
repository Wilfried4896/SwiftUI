//
//  MovieRow.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 18.01.2023.
//

import SwiftUI

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack (spacing: 20) {
            UrlImage(urlString: movie.Images[2])
                .frame(width: 130, height: 70)
                .cornerRadius(10)
            Text(movie.Title)
                .bold()
        }
    }
}


struct UrlImage: View {
    
    let urlString: String
    @State var data: Data?
    
    var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
                .background(Color.gray)
        } else {
            Image("")
                .resizable()
                .background(Color.gray)
                .onAppear {
                    downloadImg()
                }
        }
    }
    
    func downloadImg() {
        let session = URLSession.shared
        guard let url = URL(string: urlString) else { return }
        
        session.dataTask(with: url) { data, _, _ in
            guard let imageData = data else { return }
            self.data = imageData
        }.resume()
    }
}
