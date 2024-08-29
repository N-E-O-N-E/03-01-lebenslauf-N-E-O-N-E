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
        
        
    // Berufserfahrung
    Group {
        
        HStack(alignment: .top) {
            Text("\(String(cvBeruf[0].vonJahr)) - \(String(cvBeruf[0].bisJahr))")
                .frame(width: 110, alignment: .trailing)
                .padding(1)
            
            VStack {
                Text("\(cvBeruf[0].titel)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .bold()
                Text("\(cvBeruf[0].ort)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .italic()
            }
        }
        
        HStack(alignment: .top) {
            Text("\(String(cvBeruf[1].vonJahr)) - \(String(cvBeruf[1].bisJahr))")
                .frame(width: 110, alignment: .trailing)
                .padding(1)
            
            VStack {
                Text("\(cvBeruf[1].titel)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .bold()
                Text("\(cvBeruf[1].ort)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .italic()
            }
        }
        
        HStack(alignment: .top) {
            Text("\(String(cvBeruf[2].vonJahr)) - \(String(cvBeruf[2].bisJahr))")
                .frame(width: 110, alignment: .trailing)
                .padding(1)
            
            VStack {
                Text("\(cvBeruf[2].titel)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .bold()
                Text("\(cvBeruf[2].ort)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .italic()
            }
        }
        
        HStack(alignment: .top) {
            Text("\(String(cvBeruf[3].vonJahr)) - \(String(cvBeruf[3].bisJahr))")
                .frame(width: 110, alignment: .trailing)
                .padding(1)
            
            VStack {
                Text("\(cvBeruf[3].titel)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .bold()
                Text("\(cvBeruf[3].ort)")
                    .frame(width: 260, alignment: .leading)
                    .padding(1)
                    .italic()
            }
        }
        
    }

    
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
