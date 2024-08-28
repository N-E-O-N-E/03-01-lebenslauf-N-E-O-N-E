//
//  CVView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 27.08.24.
//
import SwiftUI

struct CVView: View {
    var body: some View {
        
        let pers1 = CVHeader(pic: "bg1", 
                             CVtitel: "Max Mustermann",
                             headline: "Persönliche Daten",
                             vorname: "Max",
                             nachname: "Mustermann",
                             strasseNr: "Musterstraße 1",
                             plzOrt: "12345 Musterstadt",
                             eMail: "max@mustermann.de",
                             telefon: "12934 5412512",
                             gebOrt: "Musterstadt",
                             familienstand: "ledig")
        
        let erfahrung1 = [Berufserfahrung(titel: "Senior Projektmanager", 
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
                                          vonJahr: 2012, bisJahr: 2014)]
        
        let ausbildung1 = [Ausbildung(name: "Master of Science in Wirtschaftsinformatik", 
                                      ort: "Universität Musterstadt",
                                      vonJahr: 2012, bisJahr: 2014),
                           Ausbildung(name: "Bachelor of Science in Betriebswirtschaftslehre", 
                                      ort: "Hochschule Musterstadt",
                                      vonJahr: 2022, bisJahr: 2024)]
        
        CVHeaderView2(cvHeader: pers1, cvBeruf: erfahrung1, cvAusbild: ausbildung1)
        
    } // endBody
}

#Preview {
    CVView()
    
}





