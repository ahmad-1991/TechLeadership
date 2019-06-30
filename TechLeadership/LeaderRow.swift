//
//  LeaderRow.swift
//  TechLeadership
//
//  Created by Ahmad on 27/10/1440 AH.
//  Copyright © 1440 Ahmad. All rights reserved.
//

import SwiftUI


//TODO: LeaderRow here:

struct LeaderRow : View {
    
    let leader : Leader
    var body: some View {
        HStack {
            Image(leader.imageName)
                .resizable()
                .frame(width:70 , height: 70)
                .clipShape(Circle())
                .aspectRatio(2/1, contentMode: .fill)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                .shadow(radius: 5)
            VStack(alignment:.leading){
                Text(leader.name)
                Text(leader.title)
                    .font(.subheadline)
                .lineLimit(nil)
            }
            Spacer()
        }
        
    }
}

#if DEBUG
struct LeaderRow_Previews : PreviewProvider {
    static var previews: some View {
        Group{
            LeaderRow(leader: leaderData[3])
            LeaderRow(leader: leaderData[2])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
