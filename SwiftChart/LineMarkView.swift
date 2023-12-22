//
//  LineMark.swift
//  SwiftChart
//
//  Created by Sawada Masato on 2023/12/22.
//

import SwiftUI
import Charts

struct LineMarkView: View {
    
    var data: [MonthlyHoursOfSunshine] = [
        MonthlyHoursOfSunshine(month: 1, hoursOfSunshine: 74),
        MonthlyHoursOfSunshine(month: 2, hoursOfSunshine: 99),
        MonthlyHoursOfSunshine(month: 12, hoursOfSunshine: 62)
    ]
    
    var body: some View {
        Chart(data) {
            LineMark(x: .value("month", $0.date),
                     y: .value("hours", $0.hoursOfSunshine))
        }
        .padding()
    }
}

struct MonthlyHoursOfSunshine: Identifiable {
    var date: Date
    var hoursOfSunshine: Double
    var id = UUID()
    
    init(month: Int, hoursOfSunshine: Double) {
        let calendar = Calendar.autoupdatingCurrent
        guard let date = calendar.date(from: DateComponents(year: 2023, month: month)) else {
            self.date = Date()
            self.hoursOfSunshine = 0.0
            return
        }
        
        self.date = date
        self.hoursOfSunshine = hoursOfSunshine
    }
}

#Preview {
    LineMarkView()
}
