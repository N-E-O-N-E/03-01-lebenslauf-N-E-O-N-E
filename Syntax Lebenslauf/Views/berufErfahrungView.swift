//
//  berufErfahrungView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 29.08.24.
//

import SwiftUI

struct berufErfahrungView: View {
    
    let cvBeruf: [Berufserfahrung]
    
    var body: some View {

        
        ZStack(alignment: .leading) {
            Image(systemName: "hammer.fill")
            .padding(.horizontal, 10)
            
            Text("Berufserfahrung")
                .font(.title3).bold()
                .padding(.horizontal, 40)
        } .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 0.2, green: 0.6, blue: 0.5).opacity(0.2))
        
        
        ForEach(cvBeruf, id: \.id) { inhalt in
           
            Text("\(inhalt.titel)")
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
        

    
Spacer(minLength: 30)
        
        
    }
}

#Preview {
    
    berufErfahrungView(cvBeruf: [Berufserfahrung(titel: "Senior Projektmanager",
                                  ort: "ABC Consulting GmbH, Berlin",
                                  vonJahr: 2021, bisJahr: 2024),
                  Berufserfahrung(titel: "Projektmanager",
                                  ort: "XYZ Solutions AG, München",
                                  vonJahr: 2017, bisJahr: 2020),
                  Berufserfahrung(titel: "Junior Projektmanager",
                                  ort: "Tech Innovations GmbH, FaM",
                                  vonJahr: 2014, bisJahr: 2017),
                  Berufserfahrung(titel: "Projektassistenz",
                                  ort: "XYZ Solutions AG, München",
                                  vonJahr: 2012, bisJahr: 2014)])
}
