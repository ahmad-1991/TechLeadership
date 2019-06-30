//
//  LeaderCarousel.swift
//  TechLeadership
//
//  Created by Ahmad on 27/10/1440 AH.
//  Copyright © 1440 Ahmad. All rights reserved.
//

import SwiftUI


//TODO: LeaderCarousel ScrollView here:

struct LeaderCarousel : View {
    let leaders :[Leader]
    var body: some View {
        VStack(alignment:.leading){
            Text("Carousel")
                .font(.largeTitle)
                .padding([.bottom],-5)
                .padding([.leading] , 15)
            ScrollView( showsHorizontalIndicator: false ){
                HStack{
                    ForEach(leaders){ leader in
                        NavigationButton(destination: LeaderDetail(leader: leader)){
                            CircleImage(leader:leader)
                        }
                    }
                }
            }
//                .padding([.top] , 15)

            }.frame(height:140)
            .padding([.leading] , -15)

        
    }
}

#if DEBUG
struct LeaderCarousel_Previews : PreviewProvider {
    static var previews: some View {
        LeaderCarousel(leaders: leaderData)
    }
}
#endif


//TODO: CircleImage  here:

struct CircleImage : View {
    let leader: Leader
    
    var body: some View {
        return Image(leader.imageName)
            .resizable()
            .renderingMode(.original)
            .frame(width:80 , height: 80)
            .clipShape(Circle())
            .aspectRatio(2/1, contentMode: .fill)
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .shadow(radius: 3)
            .padding(.trailing,5)
            .padding(.top,5)

        
    }
}


