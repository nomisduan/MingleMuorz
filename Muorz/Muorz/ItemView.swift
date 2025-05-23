//
//  ItemView.swift
//  muorz
//
//  Created by Simon Naud on 23/05/2025.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    let originalName : String
    let description: String
    let price: Double
    var itemSelected : Bool = false
}

struct ItemView: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 6)
                .foregroundStyle(.green)
            VStack(alignment: .leading){
                HStack {
                    Text("Farmer's salad")
                        .font(.system(size: 17, weight: .regular, design: .serif))
                    Circle()
                        .frame(width: 20)
                        
                }
                Spacer()
                Text("Lettuce, radicchio, corn, olives, rocket and tiny mozzarella")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .frame(width: 270)
            .padding(.vertical)
            Spacer()
            VStack(alignment: .trailing) {
                Text("12.00€")
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25)
                    .foregroundStyle(.gray)
                
            }
            .padding(.vertical)
        }
        .frame(height: 100)
        
    }
}

#Preview {
    ItemView()
}
