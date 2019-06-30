//
//  LeaderList.swift
//  TechLeadership
//
//  Created by Ahmad on 27/10/1440 AH.
//  Copyright © 1440 Ahmad. All rights reserved.
//

import SwiftUI

//TODO: LeaderList here:

struct LeaderList : View {
    
    let leaders : [Leader]
    var body: some View {
        NavigationView{
            
            List{
                LeaderCarousel(leaders: leaders)
                    .frame(width: UIScreen.main.bounds.width)
                //                    .padding([.bottom] , 5)
                
                Text("List")
                    .font(.largeTitle)
                ForEach(leaderData){ leader in
                    
                    NavigationButton(destination: LeaderDetail(leader: leader)) {
                        LeaderRow(leader: leader)
                    }
                }
                }.navigationBarTitle(Text("Leadership"))
        }
    }
}

#if DEBUG
struct LeaderList_Previews : PreviewProvider {
    static var previews: some View {
        LeaderList(leaders: leaderData)
            
            //TODO: mode dark here:
            .environment(\.colorScheme, .dark)
    }
}
#endif





