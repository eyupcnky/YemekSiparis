//
//  YemekDetay.swift
//  YemekSiparis
//
//  Created by Eyyup on 23.09.2025.
//

import SwiftUI

struct YemekDetay: View {
    var yemek = Yemekler()
    var body: some View {
        VStack{
            AsyncImage(url:URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(yemek.yemek_resim_adi!)")){ image in
                image.resizable()
                
            }placeholder: {
                ProgressView()
            }
            
            Text("\(yemek.yemek_fiyat!) ₺")
            
            Button("Sepete Ekle"){
                
            }
        }.navigationTitle("\(yemek.yemek_adi!)")
        }
    }


/*#Preview {
    YemekDetay()
}*/
