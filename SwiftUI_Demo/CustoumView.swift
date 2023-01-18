//
//  CustoumButton.swift
//  SwiftUI_Demo
//
//  Created by Вилфриэд Оди on 17.01.2023.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
    }
}

struct CustoumButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(height: 50)
            .background(Color("LogInColor"))
            .foregroundColor(.white)
            .cornerRadius(15)
    }
}

struct CustoumTexfied: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 50)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color("FieldColor"))
            )
    }
}

struct TextButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(
                .system(size: 20, weight: .regular)
            )
            .frame(maxWidth: .infinity)
    }
}

