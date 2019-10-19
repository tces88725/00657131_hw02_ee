//
//  MenuList.swift
//  00657131_hw02
//
//  Created by User08 on 2019/10/19.
//  Copyright © 2019 ntou. All rights reserved.
//

import SwiftUI
struct MenuList: View{
    var body: some View{
        NavigationView {
            desertList()
        }
    }
}
struct ＭenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList()
    }
}

struct desertList: View {
    var body: some View {
        List(0..<menus.count) { (index)  in
            NavigationLink(destination:
            MenuDetail(menu: menus[index])) {
                MenuRow(menu: menus[index])
            }
        }
        .navigationBarTitle("食譜")
    }
}
