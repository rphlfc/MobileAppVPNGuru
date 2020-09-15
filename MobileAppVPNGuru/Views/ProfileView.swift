//
//  ProfileView.swift
//  MobileAppVPNGuru
//
//  Created by Raphael Cerqueira on 13/09/20.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.9664215446, green: 0.9805980325, blue: 0.9977274537, alpha: 1)).edgesIgnoringSafeArea(.top)
            
            VStack {
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundColor(.black)
                    })
                    
                    Text("Profile")
                        .font(.system(size: 18, weight: .semibold))
                        .padding(.leading, 8)
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "gift")
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .background(Color(#colorLiteral(red: 0.9882841706, green: 0.7159970403, blue: 0.02901485376, alpha: 1)))
                            .clipShape(Circle())
                        
                    })
                }.padding(.horizontal)
                
                ZStack {
                    Circle()
                        .trim(from: 0, to: 0.8)
                        .stroke(lineWidth: 8.0)
                        .frame(width: 140, height: 140)
                        .foregroundColor(Color(#colorLiteral(red: 0.8924562931, green: 0.9296309352, blue: 0.9857185483, alpha: 1)))
                        .rotationEffect(Angle.degrees(125))
                    
                    Circle()
                        .trim(from: 0, to: 0.55)
                        .stroke(style: StrokeStyle(lineWidth: 8, lineCap: .round))
                        .frame(width: 140, height: 140)
                        .foregroundColor(Color(#colorLiteral(red: 0.9882841706, green: 0.7159970403, blue: 0.02901485376, alpha: 1)))
                        .rotationEffect(Angle.degrees(125))
                    
                    
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                }
                
                Text("Dwayne Johnson")
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.top)
                
                Button(action: {}, label: {
                    Text("Premium")
                        .font(.system(size: 18, weight: .semibold))
                        .frame(width: 140, height: 40)
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.9882841706, green: 0.7159970403, blue: 0.02901485376, alpha: 1)))
                        .clipShape(Capsule())
                })
                .padding(.top)
                
                Spacer()
                
                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        MenuItemView(image: "bell.fill", title: "Notification", primaryColor: Color(#colorLiteral(red: 0.9710522294, green: 0.7157194614, blue: 0.3440326452, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.9987537265, green: 0.9525825381, blue: 0.8826449513, alpha: 1)))
                        
                        MenuItemView(image: "person.fill", title: "Profile settings", primaryColor: Color(#colorLiteral(red: 0.3146694601, green: 0.5728499293, blue: 0.9614248872, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.8612155914, green: 0.9014372826, blue: 1, alpha: 1)))
                        
                        MenuItemView(image: "globe", title: "VPN", primaryColor: Color(#colorLiteral(red: 0.9814458489, green: 0.6392123103, blue: 0.3920971155, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.9957335591, green: 0.9198722243, blue: 0.8681523204, alpha: 1)))
                        
                        MenuItemView(image: "nosign", title: "Adblocker", primaryColor: Color(#colorLiteral(red: 0.3156840503, green: 0.5059834123, blue: 0.959802568, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.8936892152, green: 0.9252048731, blue: 0.9988365769, alpha: 1)))
                        
                        MenuItemView(image: "display", title: "My devices", primaryColor: Color(#colorLiteral(red: 0.9710522294, green: 0.7157194614, blue: 0.3440326452, alpha: 1)), secondaryColor: Color(#colorLiteral(red: 0.9987537265, green: 0.9525825381, blue: 0.8826449513, alpha: 1)))
                    }
                    .padding(20)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.white).shadow(color: Color.black.opacity(0.1), radius: 10, x: 0.0, y: 0.0))
                }
                .padding(.top)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
