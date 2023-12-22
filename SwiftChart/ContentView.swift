//
//  ContentView.swift
//  SwiftChart
//
//  Created by Sawada Masato on 2023/12/22.
//

import SwiftUI
import Charts

struct ContentView: View {
    var data: [ToyShape] = [
        ToyShape(color: "Green", type: "Cube", count: 2),
        ToyShape(color: "Green", type: "Sphere", count: 0),
        ToyShape(color: "Green", type: "Pyramid", count: 1),
        ToyShape(color: "Purple", type: "Cube", count: 1),
        ToyShape(color: "Purple", type: "Sphere", count: 1),
        ToyShape(color: "Purple", type: "Pyramid", count: 1),
        ToyShape(color: "Pink", type: "Cube", count: 1),
        ToyShape(color: "Pink", type: "Sphere", count: 2),
        ToyShape(color: "Pink", type: "Pyramid", count: 0),
        ToyShape(color: "Yellow", type: "Cube", count: 1),
        ToyShape(color: "Yellow", type: "Sphere", count: 1),
        ToyShape(color: "Yellow", type: "Pyramid", count: 2)
    ]
    
    var body: some View {
        VStack {
            Chart {
                ForEach(data) { shape in
                    BarMark(x: .value("type", shape.type),
                            y: .value("count", shape.count))
                    .foregroundStyle(by: .value("color", shape.color))
                }
            }
            .chartForegroundStyleScale([
                "Green": .green, "Purple": .purple, "Pink": .pink, "Yellow": .yellow
            ])
        }
        .padding()
    }
}

struct ToyShape: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}

#Preview {
    ContentView()
}
