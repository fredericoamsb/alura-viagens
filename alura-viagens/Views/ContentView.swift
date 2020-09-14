//
//  ContentView.swift
//  alura-viagens
//
//  Created by Frederico Augusto on 13/09/20.
//  Copyright © 2020 Frederico Augusto. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            DestaquesView()
                .tabItem {
                    Text("Destaques")
                    Image("icone-destaques")
            }
            ListaDePacotesView()
                .tabItem {
                    Text("Pacotes")
                    Image("icone-mala")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
