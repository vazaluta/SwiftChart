//
//  BarMark.swift
//  SwiftChart
//
//  Created by Sawada Masato on 2023/12/22.
//

import SwiftUI
import Charts

struct BarMarkView: View {
    let data: [Profit] = [
        Profit(department: "Production", profit: 15000),
        Profit(department: "Marketing", profit: 8000),
        Profit(department: "Finance", profit: 10000)
    ]
    
    var body: some View {
        VStack{
            
        }
    }
}

struct Profit: Identifiable {
    let department: String
    let profit: Double
    var id = UUID()
}

#Preview {
    BarMarkView()
}
