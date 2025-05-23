//
//  MenuView.swift
//  muorz
//
//  Created by Simon Naud on 23/05/2025.
//

import SwiftUI

struct Salad: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
}

struct MenuView: View {
    let salads = Array(repeating: Salad(name: "Farmer’s salad",
                                          description: "Lettuce, radicchio, corn, olives, rocket and tiny mozzarella",
                                          price: 12.00), count: 5)
      
      var body: some View {
          VStack(alignment: .leading, spacing: 10) {
              Text("Salads")
                  .font(.title)
                  .bold()
                  .padding(.leading)
              
              ForEach(salads) { salad in
                  VStack {
                      HStack(alignment: .top) {
                          VStack(alignment: .leading, spacing: 4) {
                              Text(salad.name)
                                  .font(.headline)
                              Text(salad.description)
                                  .font(.subheadline)
                                  .foregroundColor(.gray)
                          }
                          Spacer()
                          VStack(alignment: .trailing) {
                              Text(String(format: "%.2f€", salad.price))
                                  .bold()
                              Spacer()
                              Button(action: {
                                  // Action pour ajouter
                              }) {
                                  Image(systemName: "plus.circle")
                                      .font(.title2)
                                      .foregroundColor(.gray)
                              }
                          }
                      }
                      .padding(.horizontal)
                      Divider()
                  }
              }
          }
          .padding()
          .background(Color(UIColor.systemGray6))
          .cornerRadius(16)
          .padding()
      }
  }

#Preview {
    MenuView()
}
