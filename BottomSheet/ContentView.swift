//
//  ContentView.swift
//  BottomSheet
//
//  Created by Faris Hurić on 10. 10. 2022..
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingBottomSheet: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                Button {
                    isShowingBottomSheet = true
                } label: {
                    Text("Show bottom sheet")
                }.buttonStyle(.borderedProminent)
            }
            BottomSheetView(isShowing: $isShowingBottomSheet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
