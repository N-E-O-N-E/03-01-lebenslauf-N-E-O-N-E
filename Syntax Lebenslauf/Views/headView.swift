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

                    Image(cvHeader.bg)
                    Image(cvHeader.pic)
                        .frame(width: 210, height: 210)
                        .overlay(Circle().stroke(Color(.white), lineWidth: 4))
                        .offset(y:65)
                }
                .frame(maxWidth: .infinity, alignment: .top)
                .edgesIgnoringSafeArea(.all)
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
