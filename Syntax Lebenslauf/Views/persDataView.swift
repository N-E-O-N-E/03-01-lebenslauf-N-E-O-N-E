//
//  persDataView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 29.08.24.
//

import SwiftUI

struct persDataView: View {
    let cvHeader: CVHeader

    var body: some View {
        
        HStack(alignment: .center) {
            Text("\(cvHeader.CVtitel)")
                .font(.title)
                .bold()
                .padding(.leading, 22.0)
                .frame(width: 300.0, height: 50.0, alignment: .leading)
               
            
            
            Button(action: {
                print("E-Mail an Kontakt versenden...")
            }, label: {
                Image(systemName: "envelope.fill")
                    .mailButtonStyle()
            })
            .padding(.trailing, 21.0)
            
            
        }
        .frame(width: .infinity)
        
        
            
        ZStack(alignment: .leading) {
            Image(systemName: "person.circle.fill")
                .padding(.horizontal, 10)
            
            Text("Persönliche Daten")
                .font(.title3).bold()
                .padding(.horizontal, 40)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 0.2, green: 0.6, blue: 0.5).opacity(0.2))
        
        // Gruppe: Persönliche Daten
        Group {
            HStack(alignment: .top) {
                
                Text("Vorname:")
                    .frame(width: 110, alignment: .trailing)
                    .padding(1.0)
                
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
       
    }
}

#Preview {
    persDataView(cvHeader: CVHeader(bg: "bg1",
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
                                    familienstand: "ledig"))
}
