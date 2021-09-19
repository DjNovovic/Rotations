//
//  ContentView.swift
//  Rotations
//
//  Created by Đorđije Novović on 19.9.21..
//

import SwiftUI

struct ContentView: View {
    
    @State var degress: Double = 0.0
    
    var body: some View {
        VStack {
            Image("smile")
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .rotationEffect(.degrees(degress))
                .padding()
            
            Spacer()
            
            HStack {
                Button(action: {
                    withAnimation {
                        degress -= 10
                    }
                }, label: {
                    Image(systemName: "arrow.counterclockwise")
                })
                Spacer()
                Button(action: {
                    withAnimation {
                        degress = 0
                    }
                }, label: {
                    Image(systemName: "0.circle")
                })
                Spacer()
                Button(action: {
                    withAnimation {
                        degress += 10
                    }
                }, label: {
                    Image(systemName: "arrow.clockwise")
                })
            }
            .font(.largeTitle)
            .foregroundColor(.green)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
