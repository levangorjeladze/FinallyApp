//
//  SettingsView.swift
//  FinallyAPP
//
//  Created by Levan Gorjeladze on 05.01.23.
//

import SwiftUI

struct SettingsView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var phone = ""

    var imageUrl = URL(string: "https://scontent.ftbs7-1.fna.fbcdn.net/v/t39.30808-6/293694027_2731583970316838_6241135717156034342_n.jpg?stp=cp6_dst-jpg&_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHNgBk2JpMRvjTKZ6NjbnY0utNRNq3_-Di601E2rf_4OAGu6zX6ow3pp50MIrCD21937GedG1Qsu1UNbFngMg1E&_nc_ohc=QdC74U8PdMwAX_T2CBf&_nc_ht=scontent.ftbs7-1.fna&oh=00_AfCgUIOL_Ra1R_gHBKAD8LuyiUH06sX_a2CqK9qssP8cFA&oe=63BF2E50")
    
    
    var body: some View {
        NavigationView {
            VStack{
                AsyncImage(url: imageUrl) { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 150, height: 150)
                        .cornerRadius(100)
                } placeholder: {
                    ProgressView()
                }
                .padding()
                
                Form {
                    Section(header: Text("Personal Info")){
                        TextField("First Name",text: $firstName)
                        TextField("Last Name",text: $lastName)
                        TextField("Email",text: $email)
                        TextField("Phone",text: $phone)

                    }
                }
            }
                .navigationTitle("Settings")
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button{
                            print("Save tapped")
                        }label: {
                            Label("Save",systemImage: "square.and.arrow.down")
                        }
                    }
                }
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct ProfileImage:View{
    var imageName: String
    var body: some View{
        Image(imageName)
            .resizable()
            .frame(width: 100,height: 100)
            .clipShape(Circle())
    }
}
