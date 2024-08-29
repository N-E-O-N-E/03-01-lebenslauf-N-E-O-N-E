//
//  extensions.swift
//  Syntax Lebenslauf
//
//  Created by Markus Wirtz on 29.08.24.
//

import Foundation
import SwiftUI

extension View {
    func mailButtonStyle() -> some View {
        self
            .imageScale(.large)
            .foregroundColor(Color(red: 0.2, green: 0.6, blue: 0.5).opacity(0.9))
    }
}
