//
//  ListaDePacotesView.swift
//  alura-viagens
//
//  Created by Frederico Augusto on 14/09/20.
//  Copyright © 2020 Frederico Augusto. All rights reserved.
//

import SwiftUI

struct ListaDePacotesView: View {
    
    var categorias: [String: [PacoteDeViagem]] {
        Dictionary(grouping: pacotesDeViagens, by: { $0.categoria.rawValue })
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(categorias.keys.sorted(), id: \.self) { chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                }
            }
            .navigationBarTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
        }
        .onAppear() {
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
            UITableViewCell.appearance().backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
            UINavigationBar.appearance().backgroundColor = UIColor(red: 247/255, green: 247/255, blue: 247/255, alpha: 1)
        }
        .onDisappear() {
            UITableView.appearance().separatorStyle = .singleLine
            UITableView.appearance().backgroundColor = nil
            UITableViewCell.appearance().backgroundColor = nil
            UINavigationBar.appearance().backgroundColor = nil
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
