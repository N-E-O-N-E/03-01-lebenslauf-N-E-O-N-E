//
//  headView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 29.08.24.
//

import SwiftUI



struct headView: View {
    let cvHeader: CVHeader
    
    var body: some View {
        
        // profilbild und Hintergrund fix
        Group{
            
            
            ZStack{
                    
                    //Image(cvHeader.bg)
                    
                Rectangle()
                .frame(width: .infinity, height: 230)
                .foregroundColor(Color(red: 0.3, green: 0.6, blue: 0.45).opacity(0.7))
                .overlay(Rectangle().stroke(Color(.white), lineWidth: 1))
                .shadow(radius: 10)
                .padding(-1)
                
                Image(cvHeader.pic)
                    .frame(width: 220, height: 220)
                    .overlay(Circle().stroke(Color(.white), lineWidth: 3))
                    .offset(y:65)
                    .shadow(radius: 50)
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .padding(.bottom, 15)
                .edgesIgnoringSafeArea(.top)
            
            Spacer()
            
            }
    }
}

#Preview {
    headView(cvHeader: CVHeader(bg: "bg1",
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
