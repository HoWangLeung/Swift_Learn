//
//  HomeView.swift
//  Restart
//
//  Created by Ho Wang Leung on 11/3/2022.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        VStack(spacing:20) {
            Text("Home")
                .font(.largeTitle)
            Button(action:{
                isOnboardingViewActive=true
            }){
                Text("Restart")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
