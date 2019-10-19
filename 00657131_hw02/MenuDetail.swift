//
//  MenuDetail.swift
//  00657131_hw02
//
//  Created by User08 on 2019/10/19.
//  Copyright © 2019 ntou. All rights reserved.
//

import Foundation
import SwiftUI

/*struct MenuDetail: View {
    var menu: Menu
    
    var body: some View {
        VStack{
            MenuImage(menu: menu)
            Text(menu.material)
            Text(menu.introduce)
                .padding()
        }
    }
}*/



struct MenuDetail: View
{
    
    var menu: Menu
    
    var body: some View
    {
        ScrollView(.vertical)
        {
            desertDetail(menu: menu)
        }
      
    }
    
}

struct desertDetail: View {
    var menu: Menu
    var body: some View
    {
        VStack
        {
            ScrollView(.horizontal)
            {
                HStack(spacing:20)
                {
                    
                    ForEach(0..<menu.pic.count)
                    {
                        (index) in
                        Image(self.menu.pic[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width:200)
                            .clipped()
                    }
                }
            }
                .frame(height:200)
            Text("食材").font(.largeTitle).fontWeight(.heavy)
                .foregroundColor(.red)
                   Text(menu.material).fixedSize(horizontal: false, vertical: true)
            Text("作法").font(.largeTitle).fontWeight(.heavy)
            .foregroundColor(.blue)
            
                Text(menu.introduce).fixedSize(horizontal: false, vertical: true)
                   .padding()
            }.navigationBarTitle(menu.name)
    }
}

struct MenuDetail_Previews: PreviewProvider {
    static var previews: some View {
        MenuDetail(menu: menus[0])
    }
}
