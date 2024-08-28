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

        //Color(red: 0.35, green: 0.62, blue: 0.6)
        
        ZStack{
            
            Image(cvHeader.pic)
            
            Image("profilbild")
                .frame(width: 210, height: 210)
                .overlay(Circle().stroke(Color(.white), lineWidth: 3))
                .offset(y:65)
                
        }
        .frame(maxWidth: .infinity, alignment: .top)
        .padding(.top, -1)
        .padding(.bottom, -10)
        .edgesIgnoringSafeArea(.all)
        
        
        Text("\(cvHeader.CVtitel)")
            .font(.title).bold()
            .padding(.bottom, 0)
        
        Divider()
            
                
        ScrollView {
                
        
                
                
            ZStack {
                    Text("Persönliche Daten")
                        .font(.title3).bold()
                        .padding(.horizontal)
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
                
                
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
                
                Spacer(minLength: 30)
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                ZStack {
                    Text("Berufserfahrung")
                        .font(.title3).bold()
                        .padding(.horizontal)
                    
                    
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
                VStack(alignment: .leading) {
                    
                    // Statt Spacing einfach mal ein Frame mit fixer Breite einsetzen!
                    // ----------------------------------------------------------------------------
                    
                    
                    HStack {
                        Text("Jobtitel:")
                            .padding(1)
                        Spacer().frame(width: 20)
                        Text("\(cvBeruf[0].titel)")
                    }
                    
                    HStack {
                        Text("Firma:")
                            .padding(1)
                        Spacer().frame(width: 34)
                        Text("\(cvBeruf[0].ort)")
                    }
                    
                    
                }
                
                Spacer(minLength: 30)
                
            
            
            
            
            
                
            
                ZStack {
                    Text("Ausbildung")
                        .font(.title3).bold()
                        .padding(.horizontal)
                    
                    
                } .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 0.1, green: 0.2, blue: 0.3).opacity(0.15))
                
                
                VStack(alignment: .leading) {
                    
                    // Statt Spacing einfach mal ein Frame mit fixer Breite einsetzen!
                    // ----------------------------------------------------------------------------
                    
                    
                    HStack {
                        Text("Abschluss:")
                            .padding(1)
                        Spacer().frame(width: 20)
                        
                        Text("\(cvAusbild[0].name)")
                    }
                    
                    HStack {
                        Text("Institut:")
                            .padding(1)
                        Spacer().frame(width: 45)
                        Text("\(cvAusbild[0].ort)")
                    }
                    
                    
                }
                
            }
          
    }
    
}



#Preview {
    CVHeaderView2(
        cvHeader: CVHeader(pic: "bg1",
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
