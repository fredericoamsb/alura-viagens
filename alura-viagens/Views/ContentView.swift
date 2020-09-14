//
//  ContentView.swift
//  alura-viagens
//
//  Created by Frederico Augusto on 13/09/20.
//  Copyright © 2020 Frederico Augusto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localizaçao")){
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
                .edgesIgnoringSafeArea(.all)
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
