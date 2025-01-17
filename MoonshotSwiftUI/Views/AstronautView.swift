//
//  AstronautView.swift
//  MoonshotSwiftUI
//
//  Created by Sagun Raj Lage on 1/10/20.
//  Copyright © 2020 Sagun Raj Lage. All rights reserved.
//

import SwiftUI

struct AstronautView: View {
    
    let astronaut: Astronaut
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical) {
                VStack {
                    Image(self.astronaut.id)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width)
                    Text(self.astronaut.description)
                        .padding()
                    .layoutPriority(1)
                }
            }
        }.navigationBarTitle(astronaut.name)
    }
}

struct AstronautView_Previews: PreviewProvider {
    
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts[0])
    }
}
