//
//  ContentView.swift
//  Restart
//
//  Created by Ho Wang Leung on 11/3/2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive:Bool=true
    
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive{
                OnboardingView()
            }else{
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
