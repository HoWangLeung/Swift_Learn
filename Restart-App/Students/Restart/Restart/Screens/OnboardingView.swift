//
//  OnboardingView.swift
//  Restart
//
//  Created by Ho Wang Leung on 11/3/2022.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool=true
    
    var body: some View {
        ZStack {
            VStack(spacing:20) {
                Text("Onboarding")
                    .font(.largeTitle)
                Button(action:{
                    isOnboardingViewActive=false
                }){
                    Text("Start")
                }
            }//: VSTACK
        }//:ZSTACK
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
