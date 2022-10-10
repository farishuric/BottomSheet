//
//  BottomSheet.swift
//  BottomSheet
//
//  Created by Faris Hurić on 10. 10. 2022..
//

import SwiftUI

struct BottomSheetView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            isShowing = false
                        }
                    }
                
                VStack {
                    
                    Text("Hello sheet!")
                    
                }
                .frame(maxWidth: .infinity)
                .frame(maxHeight: 250)
                .background(.white)
                .cornerRadius(16, corners: .topLeft)
                .cornerRadius(16, corners: .topRight)
                .transition(.opacity.combined(with: .move(edge: .bottom)))
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
        
    }
}

