//
//  HeaderView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI

struct CVHeaderView2: View {
    
    var cvHeader: CVHeader
    let cvBeruf: [Berufserfahrung]
    let cvAusbild: [Ausbildung]
    
    var body: some View {
        
        ZStack{
            
            Image(cvHeader.bg)
            Image(cvHeader.pic)
                .frame(width: 210, height: 210)
                .overlay(Circle().stroke(Color(.white), lineWidth: 3))
                .offset(y:65)
                
        }
        .frame(maxWidth: .infinity, alignment: .top)
        .edgesIgnoringSafeArea(.all)
        
        Text("\(cvHeader.CVtitel)")
            .font(.title).bold()
            .padding(.bottom, 0)
        
        ScrollView() {

            ZStack {
                    Text("Persönliche Daten")
                        .font(.title3).bold()
                        .padding(.horizontal)
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
            // Gruppe: Persönliche Daten
            Group {
                HStack(alignment: .top) {
                    
                    Text("Vorname:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.vorname)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                
                HStack(alignment: .top) {
                    
                    Text("Nachname:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.nachname)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                HStack(alignment: .top) {
                    
                    Text("Strasse,Nr.:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.strasseNr)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                HStack(alignment: .top) {
                    
                    Text("PLZ, Ort:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.plzOrt)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                HStack(alignment: .top) {
                    
                    Text("E-Mail:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.eMail)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                HStack(alignment: .top) {
                    
                    Text("Telefon-Nr:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.telefon)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                HStack(alignment: .top) {
                    
                    Text("Geburtsort:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.gebOrt)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                HStack(alignment: .top) {
                    
                    Text("Familienstand:")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack(alignment: .leading) {
                        
                        Text(cvHeader.familienstand)
                            .frame(width: 200, alignment: .leading)
                            .padding(1)
                    }
                }
                
                
                Spacer(minLength: 30)
}
                          
                ZStack {
                    Text("Berufserfahrung")
                        .font(.title3).bold()
                        .padding(.horizontal)
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
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
                        Text("\(cvBeruf[0].ort)")
                            .frame(width: 260, alignment: .leading)
                            .padding(1)
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
                        Text("\(cvBeruf[1].ort)")
                            .frame(width: 260, alignment: .leading)
                            .padding(1)
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
                        Text("\(cvBeruf[2].ort)")
                            .frame(width: 260, alignment: .leading)
                            .padding(1)
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
                        Text("\(cvBeruf[3].ort)")
                            .frame(width: 260, alignment: .leading)
                            .padding(1)
                    }
                }
                
            }

            
        Spacer(minLength: 30)
                
            
                ZStack {
                    Text("Ausbildung")
                        .font(.title3).bold()
                        .padding(.horizontal)
                    
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
                HStack(alignment: .top) {
                    Text("\(String(cvAusbild[3].vonJahr)) - \(String(cvAusbild[3].bisJahr))")
                        .frame(width: 110, alignment: .trailing)
                        .padding(1)
                    
                    VStack {
                        Text("\(cvAusbild[3].name)")
                            .frame(width: 260, alignment: .leading)
                            .padding(1)
                        Text("\(cvAusbild[3].ort)")
                            .frame(width: 260, alignment: .leading)
                            .padding(1)
                    }
                }
                
                    
                    
                
                
            }
          
    }
    
}



#Preview {
    CVHeaderView2(
        cvHeader: CVHeader(bg: "bg1",
                           pic: "profilbild",
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
