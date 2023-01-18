//
//  VK_Page.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 16.01.2023.
//

import SwiftUI

struct VK_Page: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("feed".localized)
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("profile".localized)
                }
            PlayerView()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("player".localized)
                }
            VideoView()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("video".localized)
                }
            RecorderView()
                .tabItem {
                    Image(systemName: "mic.fill")
                    Text("recorder".localized)
                }
        }
    }
    
    
    struct VK_Page_Previews: PreviewProvider {
        static var previews: some View {
            VK_Page()
        }
    }
}


