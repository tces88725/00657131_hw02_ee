//
//  ContentView.swift
//  00657131_hw02
//
//  Created by User08 on 2019/10/19.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack{
            NavigationLink(destination: CapooView()){
         Image("capoo")
            .renderingMode(.original)
            }
        Text("Click it")
            .foregroundColor(.blue)
        Spacer()
        Text("參考資料")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
        Text("愛料理網站")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
