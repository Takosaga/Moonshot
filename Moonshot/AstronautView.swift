//
//  AstronautView.swift
//  Moonshot
//
//  Created by Gonzalo Gamez on 3/19/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    let mission: Mission
    
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
        }
        .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static let astronauts: [Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] =  Bundle.main.decode("missions.json")
    
    static var previews: some View {
        AstronautView(astronaut: astronauts[0], mission: missions[0])
    }
}
