//
//  ContentView.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 16.01.2023.
//

import SwiftUI

//struct ContentView: View {
//
//    @State var isPushEnable = false
//    @State var isUpdated = false
//    @State var speed = 50.0
//
//    var body: some View {
//        VStack {
//            Form {
//                Section {
//                    Toggle(isOn: $isUpdated) {
//                        Text("Update App")
//                    }
//                }
//                Toggle(isOn: $isPushEnable) {
//                    Text("Push notification")
//                }
//
//            }
//        }
//    }
//}

//struct ContentView: View {
//
//    @State var speed = 50.0
//    @State var editing = false
//
//    var body: some View {
//        VStack (alignment: .leading, spacing: 40){
//            Slider(value: $speed, in: 0...100) { editing in
//                self.editing = editing
//                print(self.editing)
//            }
//            Text("\(speed)")
//                .font(.title)
//                .foregroundColor(speed >= 80 ? .red : .green)
//        }
//        .padding()
//    }
//}

struct Universe: Identifiable {
    var id: String { name }
    var name: String
}

struct ContentView: View {
    
    @State var unviverse: Universe?
    
    var body: some View {
        VStack (spacing: 20) {
            VStack (spacing: 16) {
                Text("Какая киновселенная вам нравиться больше ?")
                Button(action: {
                    unviverse = Universe(name: "Marvel")
                }, label: {
                    Text("Marvel")
                })
                
                Button(action: {
                    unviverse = Universe(name: "DC")
                }, label: {
                    Text("DC")
                })
            }
            .alert(item: $unviverse) { unviverse in
                Alert(title: Text("Вы выбрали \(unviverse.name)"),
                      dismissButton: .destructive(Text("OK")))
            }
            
            VStack (spacing: 10) {
                Text("Заголовка")
                    .modifier(TitleBody())
                
                Text("Основный текст")
                    .modifier(BodyText())
            }
        }
    }
}

struct TitleBody: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(.red)
    }
}

struct BodyText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
