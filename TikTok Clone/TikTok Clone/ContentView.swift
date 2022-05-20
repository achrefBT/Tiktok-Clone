//
//  ContentView.swift
//  Tiktok
//
//  Created by Achref Ben Tekaya on 20/5/2022.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        
        HomeScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



class Host : UIHostingController<ContentView>{
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        
        return .lightContent
    }
}
