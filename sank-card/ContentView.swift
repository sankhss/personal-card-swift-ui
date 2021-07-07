//
//  ContentView.swift
//  sank-card
//
//  Created by Samuel Henrique on 5/29/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack {
        Color(red: 0.16, green: 0.50, blue: 0.73)
          .edgesIgnoringSafeArea(.all)
        VStack {
          Image("samuel")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
          Text("Samuel Henrique")
            .font(Font.custom("Pacifico-Regular", size: 40))
            .bold()
            .foregroundColor(.white)
          Text("Mobile Developer")
            .foregroundColor(.white)
            .font(.system(size: 25))
          Divider()
          ContactInfoView(text: "+55 61 99314-3020", iconName: "phone.fill")
          ContactInfoView(text: "samuelh.dev@gmail.com", iconName: "envelope.fill")
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro"))
    }
}
