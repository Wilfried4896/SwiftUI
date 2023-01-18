//
//  MovieDetail.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 18.01.2023.
//

import SwiftUI

struct MovieDetail: View {
    
    var movieDetail: Movie
    
    var body: some View {
       
        VStack {
            UrlImage(urlString: movieDetail.Images[1])
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            VStack(alignment: .leading) {
                Text(movieDetail.Title)
                    .font(.title)
                
                VStack(alignment: .leading, spacing: 20){
                    HStack {
                        Text(movieDetail.Actors)
                    }
                    .font(.title3)
                    .foregroundColor(.secondary)
                    
                    HStack {
                        Text("date".localized + ": " + movieDetail.Year)
                        Spacer()
                        Text("time".localized + ": " + movieDetail.Runtime)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                }
                
                Divider()
                
                Text("description".localized + " " + movieDetail.Title)
                    .font(.title2)
                Text(movieDetail.Plot)
                
                Divider()

            }
            .padding()
        }
    }
}
