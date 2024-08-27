//
//  CVView.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 27.08.24.
//

import SwiftUI

struct CVView: View {
    var body: some View {
        
        let pers1 = CVHeader(pic: "🦹‍♂️", CVtitel: "Max Mustermann", headline: "Persönliche Daten", vorname: "Max", nachname: "Mustermann", strasseNr: "Musterstraße 1", plzOrt: "12345 Musterstadt", eMail: "max@mustermann.de", telefon: "12934 5412512", gebOrt: "Musterstadt", familienstand: "ledig")
        
        //CVHeaderView(cvHeader: pers1)
        CVHeaderView2(cvHeader: pers1)
        
    } // endBody
}

#Preview {
    CVView()
}
