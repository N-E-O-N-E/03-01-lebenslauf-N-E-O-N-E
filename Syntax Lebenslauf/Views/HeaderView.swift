//
//  HeaderView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI

struct CVHeaderView: View {
    let cvHeader: CVHeader
    
    var body: some View {
            
        VStack(alignment: .center) {
            
            Rectangle()
                .frame(width: .infinity, height: 200)
                .foregroundColor(.red)
            
            Text("\(cvHeader.pic)")
                .frame(width: 200, height: 100).colorMultiply(.green)
            Divider()
            Text("\(cvHeader.CVtitel)")
                .font(.title).bold()
            Divider()
            
        } .padding(20)
        
        VStack(alignment: .leading) {
            
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
        
        
    } // end Body View
}

#Preview {
    CVHeaderView(cvHeader: CVHeader(bg: "", pic: "😀", CVtitel: "Max Mustermann", headline: "Persönliche Daten", vorname: "Max", nachname: "Mustermann", strasseNr: "Musterstraße 1", plzOrt: "12345 Musterstadt", eMail: "max@mustermann.de", telefon: "12934 5412512", gebOrt: "Musterstadt", familienstand: "ledig"))
}

