//
//  CapooView.swift
//  00657131_hw02
//
//  Created by User08 on 2019/10/19.
//  Copyright © 2019 ntou. All rights reserved.
//

import Foundation
import SwiftUI
struct CapooView: View {
  var body: some View {
    VStack{
      Text("這裡有更多capoo")
        .font(.largeTitle)
        .foregroundColor(.blue)
      Image("capoo0")
      Image("capoo1")
    }
   }
}
struct CapooView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationView{
            CapooView()
        }
    }
}
