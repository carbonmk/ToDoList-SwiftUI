//
//  DetailView.swift
//  ToDoList
//
//  Created by Michael Carbone on 10/11/22.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var passedValue: String
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            
            Text("You are a swifty legend\nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            Spacer()
            Button("Get Back") {
                dismiss()
            }
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(passedValue: "Item 1")
    }
}
