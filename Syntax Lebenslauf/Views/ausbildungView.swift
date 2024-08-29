//
//  ausbildungView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 29.08.24.
//

import SwiftUI

struct ausbildungView: View {
    
    let cvAusbild: [Ausbildung]
    
    var body: some View {
        
        
        ZStack(alignment: .leading) {
            Image(systemName: "graduationcap.fill")
            .padding(.horizontal, 10)
            
                Text("Ausbildung")
                    .font(.title3).bold()
                    .padding(.horizontal, 40)
                
            } .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(red: 0.2, green: 0.6, blue: 0.5).opacity(0.2))
            
            
            HStack(alignment: .top) {
                Text("\(String(cvAusbild[0].vonJahr)) - \(String(cvAusbild[0].bisJahr))")
                    .frame(width: 110, alignment: .trailing)
                    .padding(1)
                
                VStack {
                    Text("\(cvAusbild[0].name)")
                        .frame(width: 260, alignment: .leading)
                        .padding(1)
                        .bold()
                    Text("\(cvAusbild[0].ort)")
                        .frame(width: 260, alignment: .leading)
                        .padding(1)
                        .italic()
                        
                }
            }
        
            HStack(alignment: .top) {
                Text("\(String(cvAusbild[1].vonJahr)) - \(String(cvAusbild[1].bisJahr))")
                    .frame(width: 110, alignment: .trailing)
                    .padding(1)
                
                VStack {
                    Text("\(cvAusbild[1].name)")
                        .frame(width: 260, alignment: .leading)
                        .padding(1)
                        .bold()
                    Text("\(cvAusbild[1].ort)")
                        .frame(width: 260, alignment: .leading)
                        .padding(1)
                        .italic()
                        
                }
            }
    }
}

#Preview {
    
    ausbildungView(cvAusbild: [Ausbildung(name: "Master of Science in Wirtschaftsinformatik",
                                                     ort: "Universität Musterstadt",
                                                     vonJahr: 2012, bisJahr: 2014),
                               Ausbildung(name: "Bachelor of Science in Betriebswirtschaftslehre",
                                                     ort: "Hochschule Musterstadt",
                                                     vonJahr: 2022, bisJahr: 2024)])
}
