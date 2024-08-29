//
//  HeaderView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI

struct HeaderViewMain: View {
    
    let cvHeader: CVHeader
    let cvBeruf: [Berufserfahrung]
    let cvAusbild: [Ausbildung]

    var body: some View {
        
        // profilbild und Hintergrund fix
        Group{
            
            ZStack{
                
                Image(cvHeader.bg)
                Image(cvHeader.pic)
                
                    .frame(width: 210, height: 210)
                    .overlay(Circle().stroke(Color(.white), lineWidth: 3))
                    .offset(y:65)
            }
            .frame(maxWidth: .infinity, alignment: .top)
            .edgesIgnoringSafeArea(.all)
        }
        
        ScrollView() {
            
            persDataView(cvHeader: cvHeader)
            berufErfahrungView(cvBeruf: cvBeruf)
            ausbildungView(cvAusbild: cvAusbild)
            
        } // end ScrollView
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .edgesIgnoringSafeArea(.all)
          
    }
    
}

//#Preview {
//    HeaderViewMain(
//        cvHeader: CVHeader(bg: "bg1",
//                           pic: "profilbild",
//                           CVtitel: "Max Mustermann",
//                           headline: "Persönliche Daten",
//                           vorname: "Max",
//                           nachname: "Mustermann",
//                           strasseNr: "Musterstraße 1",
//                           plzOrt: "12345 Musterstadt",
//                           eMail: "max@mustermann.de",
//                           telefon: "12934 5412512",
//                           gebOrt: "Musterstadt",
//                           familienstand: "ledig"),
//    
//        cvBeruf: [Berufserfahrung(titel: "Senior Projektmanager",
//                                  ort: "ABC Consulting GmbH, Berlin",
//                                  vonJahr: 2021, bisJahr: 2024),
//                  Berufserfahrung(titel: "Projektmanager",
//                                  ort: "XYZ Solutions AG, München",
//                                  vonJahr: 2017, bisJahr: 2020),
//                  Berufserfahrung(titel: "Junior Projektmanager",
//                                  ort: "Tech Innovations GmbH, FaM",
//                                  vonJahr: 2014, bisJahr: 2017),
//                  Berufserfahrung(titel: "Projektassistenz",
//                                  ort: "XYZ Solutions AG, München",
//                                  vonJahr: 2012, bisJahr: 2014)],
//        
//        cvAusbild: [Ausbildung(name: "Master of Science in Wirtschaftsinformatik",
//                               ort: "Universität Musterstadt",
//                               vonJahr: 2012, bisJahr: 2014),
//                    Ausbildung(name: "Bachelor of Science in Betriebswirtschaftslehre",
//                               ort: "Hochschule Musterstadt",
//                               vonJahr: 2022, bisJahr: 2024)])
//}
