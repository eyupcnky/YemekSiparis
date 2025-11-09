//
//  YemekTasarım.swift
//  YemekSiparis
//
//  Created by Eyyup on 23.09.2025.
//

import SwiftUI

struct YemekTasarim: View {
   var yemek = Yemekler()

    var body: some View {
        HStack{
            AsyncImage(url:URL(string: "http://kasimadalan.pe.hu/yemekler/resimler/\(yemek.yemek_resim_adi!)")){ image in
                image.resizable()
                
            }placeholder: {
                ProgressView()
            }.frame(width: 100, height: 100)
            VStack(alignment: .leading,spacing: 25){
                Text("\(yemek.yemek_adi!)")
                
                Text("\(yemek.yemek_fiyat!) ₺").foregroundColor(.blue)
            }
        }
    }
}

/*#Preview {
    YemekTasar_m(
        yemek: Yemekler(isim: "Pizza", resim: "pizza", fiyat: 120)
    )
}*/
