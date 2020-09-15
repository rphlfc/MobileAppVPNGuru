//
//  MenuItemView.swift
//  MobileAppVPNGuru
//
//  Created by Raphael Cerqueira on 13/09/20.
//

import SwiftUI

struct MenuItemView: View {
    var image: String
    var title: String
    var primaryColor: Color
    var secondaryColor: Color
    
    var body: some View {
        Button(action: {}, label: {
            HStack {
                Image(systemName: self.image)
                    .foregroundColor(self.primaryColor)
                    .frame(width: 50, height: 50)
                    .background(self.secondaryColor)
                    .cornerRadius(10)
                
                Text(self.title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color(#colorLiteral(red: 0.1931150556, green: 0.2152707875, blue: 0.271395117, alpha: 1)))
                    .padding(.leading)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(Color.gray)
            }
        })
        .padding()
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(image: "bell", title: "Notifications", primaryColor: Color.white, secondaryColor: Color.black)
    }
}
