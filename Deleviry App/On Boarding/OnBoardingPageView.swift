//
//  OnBoardingPageView.swift
//  Deleviry App
//
//  Created by Lana on 23/12/2022.
//

import SwiftUI

struct OnBoardingPageView: View {
    @State private var pageIndex = 0
    private let pages: [Page] = Page.onBoardpages
    private let dotAppearance = UIPageControl.appearance()
    @State var showLogin = false
    
    var body: some View {
        
            TabView(selection: $pageIndex) {
                ForEach(pages) { page in
                    VStack {
                        Spacer()
                        OnBoardViewSample(page: page)
                            .padding(8)
                        if page == pages.last {
                            
                            Button { // Pay button
                                showLogin.toggle()
                            } label: {
                                Text("Let's eat")
                                    .frame(width: 300 , height: 50, alignment: .center)
                            }
                            
                            .font(Font.custom("Avenir", size: 18))
                            .bold()
                            .buttonStyle(.borderless)
                            .frame(width: 250, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color(red: 241/255, green: 155/255, blue: 134/255))
                            .clipShape(Capsule())
                            .fullScreenCover(isPresented: $showLogin) {
                                Home()
                            }
                            
                        }
                
                            
                        
                        Spacer()
                    }
                    .tag(page.tag)
                }
            }
            .animation(.easeInOut, value: pageIndex)// 2
            .indexViewStyle(.page(backgroundDisplayMode: .interactive))
            .tabViewStyle(PageTabViewStyle())
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .gray
            }
        }
    
        func incrementPage() {
            pageIndex += 1
        }
        
        func goToZero() {
            pageIndex = 0
        }
    }
    
    struct OnBoardingPageView_Previews: PreviewProvider {
        static var previews: some View {
            OnBoardingPageView()
            
        }
    }
    

