//
//  HeaderView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI

struct CVHeaderView2: View {
    
    let cvHeader: CVHeader
    let cvBeruf: [Berufserfahrung]
    let cvAusbild: [Ausbildung]
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
            
            ScrollView {
                
                VStack(alignment: .center) {
                    
                    Spacer(minLength: 70)
                    Image("profilbild")
                    
                    Divider()
                    
                    Text("\(cvHeader.CVtitel)")
                        .font(.title).bold()
                    
                    Divider()
                    
                } .padding(20)
                
                ZStack {
                    Text("Persönliche Daten")
                        .font(.title3).bold()
                    
                    
                } .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
                
                VStack(alignment: .leading) {
                    
                    // Statt Spacing einfach mal ein Frame mit fixer Breite einsetzen!
                    // ----------------------------------------------------------------------------
                    
                    
                    HStack {
                        Text("Vorname:")
                            .padding(1)
                        Spacer().frame(width: 50)
                        
                        Text("\(cvHeader.vorname)")
                    }
                    
                    HStack {
                        Text("Nachname:")
                            .padding(1)
                        Spacer().frame(width: 36)
                        Text("\(cvHeader.nachname)")
                    }
                    
                    HStack {
                        Text("Strasse, Nr:")
                            .padding(1)
                        Spacer().frame(width: 34)
                        Text("\(cvHeader.strasseNr)")
                    }
                    
                    HStack {
                        Text("PLZ, Ort:")
                            .padding(1)
                        Spacer().frame(width: 54)
                        Text("\(cvHeader.plzOrt)")
                    }
                    
                    HStack {
                        Text("E-Mail:")
                            .padding(1)
                        Spacer().frame(width: 70)
                        Text("\(cvHeader.eMail)")
                    }
                    
                    HStack {
                        Text("Telefon:")
                            .padding(1)
                        Spacer().frame(width: 63)
                        Text("\(cvHeader.telefon)")
                    }
                    
                    HStack {
                        Text("Geburtsort:")
                            .padding(1)
                        Spacer().frame(width: 36)
                        Text("\(cvHeader.gebOrt)")
                    }
                    HStack {
                        Text("Familienstand:")
                            .padding(1)
                        Spacer().frame(width: 14)
                        Text("\(cvHeader.familienstand)")
                    }
                    
                    
                    
                }
                
                ZStack {
                    Text("Berufserfahrung")
                        .font(.title3).bold()
                    
                    
                } .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
                VStack(alignment: .leading) {
                    
                    // Statt Spacing einfach mal ein Frame mit fixer Breite einsetzen!
                    // ----------------------------------------------------------------------------
                    
                    
                    HStack {
                        Text("Titel:")
                            .padding(1)
                        Spacer().frame(width: 50)
                        
                        Text("\(cvBeruf[0].titel)")
                    }
                    
                    HStack {
                        Text("Schule:")
                            .padding(1)
                        Spacer().frame(width: 36)
                        Text("\(cvBeruf[0].ort)")
                    }
                    
                    
                }
                
            } // end Body View
            
        }
        
    }
    
}

#Preview {
    CVHeaderView2(
        cvHeader: CVHeader(pic: "🦹‍♂️",
                           CVtitel: "Max Mustermann",
                           headline: "Persönliche Daten",
                           vorname: "Max",
                           nachname: "Mustermann",
                           strasseNr: "Musterstraße 1",
                           plzOrt: "12345 Musterstadt",
                           eMail: "max@mustermann.de",
                           telefon: "12934 5412512",
                           gebOrt: "Musterstadt",
                           familienstand: "ledig"),
        
        cvBeruf: [Berufserfahrung(titel: "Senior Projektmanager",
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
                                  vonJahr: 2012, bisJahr: 2014)],
        
        cvAusbild: [Ausbildung(name: "Master of Science in Wirtschaftsinformatik",
                               ort: "Universität Musterstadt",
                               vonJahr: 2012, bisJahr: 2014),
                    Ausbildung(name: "Bachelor of Science in Betriebswirtschaftslehre",
                               ort: "Hochschule Musterstadt",
                               vonJahr: 2022, bisJahr: 2024)])
}
