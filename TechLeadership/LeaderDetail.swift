//
//  ContentView.swift
//  TechLeadership
//
//  Created by Ahmad on 26/10/1440 AH.
//  Copyright © 1440 Ahmad. All rights reserved.
//

import SwiftUI

//TODO: LeaderDetail here:

struct LeaderDetail : View {
    let leader : Leader
    
    var body: some View {
        VStack(alignment: .leading ) {
            Image(leader.imageName)
                .resizable()
                .aspectRatio(1/1, contentMode: .fill)
                .frame(width:UIScreen.main.bounds.width)
                .clipped()
            Text(leader.name)
                .bold()
                .font(.largeTitle)
                .padding([.leading])
            Text(leader.title)
                .bold()
                .font(.subheadline)
                .padding([.leading])
            
            Spacer()
            
            }.edgesIgnoringSafeArea(.all)
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LeaderDetail(leader: leaderData[3])
    }
}
#endif
