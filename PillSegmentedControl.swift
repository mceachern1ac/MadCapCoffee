//
//  Picker.swift
//  CoffeeApp
//
//  Created by Aubri McEachern on 10/2/26.
//
import SwiftUI
import Foundation

struct PillSegmentedControl<T: Hashable>: View {
    let options: [T]
    let labels: (T) -> String
    @Binding var selection: T

    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id: \.self) { index in
                let option = options[index]
                Text(labels(option))
                    .font(.custom("Blender Bold Bold", size: 18))
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 10)
                    .background(
                        Rectangle().fill(selection == option ? Color.white : Color.clear)
                    )
                    .overlay(
                        Rectangle()
                            .stroke(Color.black, lineWidth: 1)
                            .opacity(selection == option ? 1 : 0)
                    )
                    .background(
                        HStack {
                            if index != 0 {
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 2)
                            }
                            Spacer()
                        }
                    )
                    .onTapGesture { selection = option }
            }
        }

    }
}

