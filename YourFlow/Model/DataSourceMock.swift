//
//  DataSourceMock.swift
//  YourFlow
//
//  Created by Uendell Magno on 3/23/24.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2, name: "Mercado", image: "mercado"),
    OrderType(id: 3, name: "Farmácia", image: "farmacia"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Descontos", image: "descontos"),
    OrderType(id: 6, name: "Bebidas", image: "bebidas"),
    OrderType(id: 7, name: "Gourmet", image: "gourmet")
//    OrderType(id: 8, name: "leleu", image: "SellersFlow-logo"),
//    OrderType(id: 9, name: "dasfdk", image: "swiftui-og")
    
    
]

let clientNameMock: [ClientInfo] = [

    ClientInfo(id: 303,
               client_name: "Lumma Cups",
               raw_name: "LUMMA Brasil",
               key_account: "Mario",
               ads_manager: "A definir",
               profile_picture: "lummacups-pf",
               country: "Brazil",
               marketplace: "Amazon",
               services: ["ads", "social", "inventory", "shipment", "listing"],
               cnpj: "23.552.397/0001-20"
              ),
    
    ClientInfo(id: 299,
               client_name: "Luxe",
               raw_name: "Use Luxe",
               key_account: "Mario",
               ads_manager: "Julia Pereira",
               profile_picture: "luxelingerie-pf",
               country: "Brazil",
               marketplace: "Amazon",
               services: ["ads", "inventory", "shipment"],
               cnpj: "11.914.703/0001-41")

]
