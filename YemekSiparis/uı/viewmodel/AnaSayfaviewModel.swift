//
//  AnaSayfaviewModel.swift
//  YemekSiparis
//
//  Created by Eyyup on 29.09.2025.
//

import Foundation
import Combine

class AnaSayfaviewModel:ObservableObject{
    @Published var yemeklerListesi = [Yemekler]()
    
    func yemekleriYükle () {
       let url = URL(string: "http://kasimadalan.pe.hu/yemekler/tumYemekleriGetir.php")!
        
        URLSession.shared.dataTask(with: url){ data, response, error in
            do{
                let cevap = try JSONDecoder().decode(YemeklerCevap.self, from:data!)
                if let liste = cevap.yemekler{
                    DispatchQueue.main.async {
                        self.yemeklerListesi = liste
                    }
                }
            }catch{
                print(error.localizedDescription)
            }
            
            
        }.resume()
    }
}
