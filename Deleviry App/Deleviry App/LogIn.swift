//
//  ContentView.swift
//  Restaurant App
//
//  Created by elham on 12/23/22.
//

import SwiftUI
import Firebase

struct LogIn: View {
    var body: some View {
        
        NavigationView {
            Home()
            .navigationTitle("")
            .navigationBarHidden(true)
        }
        
       
    }
}
struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}

 //MARK: - 1- struct (Home)
struct Home : View{
    
    @State var user = ""
    @State var pass = ""
    @State var show = false
    var body : some View {
        
        ZStack{
            NavigationLink(destination: Register(show: self.$show), isActive: self.$show) {
                Text("")
            }
            
            VStack{
                //logo
                VStack{
                    Image("ff-4").padding(.top,100)
                    
                }.offset(y:12 )
                    .padding(.bottom, 19)
                
                //MARK: - Welcome
                VStack(spacing: 26){
                    Text("Welcome").font(.title).fontWeight(.bold)
                    
                    // Text("Sign Into Your Account")
                    
                    CustomTF(value: self.$user,isemail: true)
                    CustomTF(value: self.$pass,isemail: false)
                    
                    //MARK: - Edit Button
                    HStack{
                        Spacer()
                        Button(action: {
                            
                        }){
                            Text("Forget Password?").foregroundColor(Color("Color2"))
                        }
                    }
                    //Button login
                    Button(action: {
                    }){
                        Text ("Login")
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .padding(.vertical)
                            .foregroundColor(.white)
                        
                    }   .background(Color("Color2"))
                        .clipShape(Capsule())
                    
                    Text("Login Using Social Media")
                    
                    SocialMedia()
                    
                    //MARK: -Edit background
                }.padding()
                //insid logo in
                // .background(Color.white)
                    .cornerRadius(5)
                    .padding()
                // .frame (maxWidth: .infinity, maxHeight:
                //    .infinity, alignment: .top)
                
                
                //MARK: -Button
                HStack{
                    
                    Text("Don't Have an Account ?")
                    
                    Button(action: {
                        
                        self.show.toggle()
                        
                    }) {
                        
                        Text("Register Now").foregroundColor(Color("Color2"))
                    }
                    
                }.padding(.top)
                
                Spacer(minLength: 0)
                
            }.edgesIgnoringSafeArea(.top)
            //background all page
                .background(Color("Color").edgesIgnoringSafeArea(.all))
        }
        
        
    }
    
    
    //MARK: - 2- struct(SocialMedia):
    struct SocialMedia : View {
        
        var body : some View {
            
            HStack(spacing: 40){
                
                Button(action: {
                }) {
                    
                    Image("apple").renderingMode(.original)
                }
                Button(action: {
                    
                }) {
                    Image("google").renderingMode(.original)
                }
            }
        }
    }
    
    
    
    
    //MARK: - 3- struct(CustomTF):
    //phone ,pass ,email
    struct CustomTF: View {
        @Binding var value: String
        var isemail = false
        var reenret = false
        
        var body : some View{
            
            VStack(spacing: 7){
                HStack{
                    //Hedin text in email
                    Text(self.isemail ? "Email" : self.reenret ? "Re-Enter" :  "Password").foregroundColor(Color.black.opacity(0.25))
                    
                    Spacer()
                }
                
                HStack{
                    
                    if self.isemail{
                        TextField("", text: self.$value)
                        
                    }
                    else{
                        
                        SecureField("", text: self.$value)
                        
                    }
                    Button (action: {
                        
                        
                        // MARK: - 􀋰, 􀌿
                    }) {
                        Image(systemName: self.isemail ? "phone.fill" :
                                "eye.slash.fill").foregroundColor (Color ("Color2"))
                    }
                }
                Divider()
            }
        }
    }
    
    
    
    
    //MARK: - (Register)
    struct Register : View{
        
        @State var user = ""
        @State var pass = ""
        @State var repass = ""
        @Binding var show : Bool
        var body : some View {
            VStack{
                
                //logo
                //           VStack{
                //               Image("ff-4").padding(.top,100)
                //
                //           }.offset(y:12 )
                //           .padding(.bottom, 19)
                
                
                //MARK: - Create Account
                VStack(spacing:40 ){
                    Text("Create Account").font(.title).fontWeight(.bold)
                        .padding(.top,90)
                    Spacer()
                    // Text("Sign Into Your Account")
                    
                    CustomTF(value: self.$user,isemail: true)
                    CustomTF(value: self.$pass,isemail: false)
                    CustomTF(value: self.$repass,isemail: false, reenret: true)
                    
                    //MARK: - Edit Button
                    HStack{
                        Spacer()
                    }
                    
                    //Button
                    Button(action: {
                    }){
                        Text ("Register Now")
                            .frame(width: UIScreen.main.bounds.width - 100)
                            .padding(.vertical)
                            .foregroundColor(.white)
                        
                    }   .background(Color("Color2"))
                        .clipShape(Capsule())
                    
                    Text("Register Using Social Media")
                    
                    SocialMedia()
                    //MARK: -Edit background
                }.padding()
                    .cornerRadius(5)
                    .padding()
                
                //MARK: -Button
                
                Spacer(minLength: 0)
                
            }.edgesIgnoringSafeArea(.top)
            //background all page
                .background(Color("Color").edgesIgnoringSafeArea(.all))
                .navigationBarTitle("")
                .navigationBarHidden(true)
        }
    }
}
