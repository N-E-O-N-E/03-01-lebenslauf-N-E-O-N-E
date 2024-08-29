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
            
        
        ForEach(cvAusbild, id: \.id) { inhalt in
           
            Text("\(inhalt.name)")
                .frame(width: 350, height: 20, alignment: .leading)
                .bold()
            
            HStack {
                
                VStack {
                    Text("\(String(inhalt.vonJahr)) - \(String(inhalt.bisJahr))")
                        .frame(width: 100, height: .infinity, alignment: .leading)
                        .padding(.leading, 10.0)
                        .padding(0)
                }
                
                VStack {
                    
                    Text("\(inhalt.ort)")
                        .frame(width: 250, height: .infinity, alignment: .leading)
                        .italic()
                }
                
            }
            
        } //endforEach
    } //endOfBodyView
} // endOfView

#Preview {
    
    ausbildungView(cvAusbild: [Ausbildung(name: "Master of Science in Wirtschaftsinformatik",
                                                     ort: "Universität Musterstadt",
                                                     vonJahr: 2012, bisJahr: 2014),
                               Ausbildung(name: "Bachelor of Science in Betriebswirtschaft",
                                                     ort: "Hochschule Musterstadt",
                                                     vonJahr: 2022, bisJahr: 2024)])
}
