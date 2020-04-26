//
//  ContentView.swift
//  Bonus_round&round
//
//  Created by 王瑋 on 2020/4/26.
//  Copyright © 2020 王瑋. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var rotateDegree: Double = 0
    var body: some View {
        VStack{
            ZStack{
                Image("ig")
                    .resizable()
                    .scaledToFill()
                    .frame(width:300, height: 300)
                    .cornerRadius(.infinity)
                    .shadow(radius: 20)
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .frame(width:30, height: 30)
                    .offset(x:-120,y: -120)
                    .foregroundColor(Color(red: 150/255, green: 213/255, blue: 252/255))
                    .rotationEffect(.degrees(rotateDegree+43))
            }
            HStack{
                Slider(value: self.$rotateDegree, in: 0...360)
                    .accentColor(Color.blue)
            }
            .offset(y: 50)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
