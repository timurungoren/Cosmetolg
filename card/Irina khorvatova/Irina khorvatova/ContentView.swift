//
//  ContentView.swift
//  Irina khorvatova
//
//  Created by Timur on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            ZStack{
                Color(red: 0.97, green: 0.65, blue: 0.76).ignoresSafeArea()
                VStack{Image("ava")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150.0, height: 150.0)
                        .clipShape(Circle())
                        .overlay(Circle()
                        .stroke(lineWidth: 5))
                    Text("Ирина Хорватова")
                        .font(.title)
                    Text("Косметолог")
                        .fontWeight(.heavy)
                        .padding(.vertical)
                        .font(.largeTitle)
                    Divider()
                    Card(image: "phone.fill", massage: "+7(916)-960-32-02")
                    Card(image: "phone.fill", massage: "Кабинет 231")
                }.foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let massage: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame( height: 50)
            .overlay(HStack {Image(systemName:
            image)
                Text ("message")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.horizontal)
                
            }.foregroundColor(Color(red: 0.97, green: 0.65, blue: 0.76)))
    }
}
