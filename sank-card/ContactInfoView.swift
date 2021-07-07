//
//  ContactInfoView.swift
//  sank-card
//
//  Created by Samuel Henrique on 5/29/21.
//

import SwiftUI

struct ContactInfoView: View {
  let text: String
  let iconName: String
  
  var body: some View {
    RoundedRectangle(cornerRadius: 25)
      .frame(height: 50, alignment: .center)
      .foregroundColor(.white)
      .overlay(
        HStack {
          Image(systemName: iconName)
            .foregroundColor(Color(red: 0.16, green: 0.50, blue: 0.73))
          Text(text)
        }
      )
      .padding(.all)
  }
}

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
      ContactInfoView(text: "Placeholder", iconName: "phone.fill")
        .previewLayout(.sizeThatFits)
    }
}
