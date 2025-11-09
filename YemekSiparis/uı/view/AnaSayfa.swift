//
//  ContentView.swift
//  YemekSiparis
//
//  Created by Eyyup on 23.09.2025.
//

import SwiftUI

struct AnaSayfa: View {
    @ObservedObject var viewModel = AnaSayfaviewModel()
    
    init(){
        viewModel.yemekleriYükle()
    }
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.yemeklerListesi){ yemek in
                    NavigationLink(destination: YemekDetay(yemek: yemek)){
                        YemekTasarim(yemek: yemek)
                    }
                    
                    
                }
                
            }.navigationTitle("Yemekler")
                
        }
    }
}

#Preview {
    AnaSayfa()
}
