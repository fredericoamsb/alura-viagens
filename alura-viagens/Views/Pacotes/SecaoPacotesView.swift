//
//  SecaoPacotesView.swift
//  alura-viagens
//
//  Created by Frederico Augusto on 13/09/20.
//  Copyright © 2020 Frederico Augusto. All rights reserved.
//

import SwiftUI

struct SecaoPacotesView: View {
    
    var nomeDaSecao: String
    var pacotes: [PacoteDeViagem]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.nomeDaSecao)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.pacotes) { pacote in
                        NavigationLink(destination: DetalhesViagemView(pacoteDeViagem: pacote)
                            .navigationBarTitle("")
                            .navigationBarHidden(true)
                        ) {
                            PacotesViagensView(pacoteDeViagem: pacote)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
            }
        }
        .background(Color(red: 247.5/255, green: 247.5/255, blue: 247.5/255))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeDaSecao: pacotesDeViagens[0].categoria.rawValue, pacotes: pacotesDeViagens)
            .previewLayout(.fixed(width: 600, height: 300))
    }
}
