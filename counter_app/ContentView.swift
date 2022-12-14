//
//  ContentView.swift
//  counter_app
//
//  Created by Min Ku An on 2022-09-13.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
//            Spacer() // to fill the height size of screen
            
            makeCountText()
                .padding(.bottom, 50)
            
            HStack(alignment: .center, spacing: 20){
                makePlusCountButton()
                makeMinusCountButton()
            }
            
            makeResetButton()
                        
            // Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // to fill the screen
        .background(Color.pink.opacity(0.4))
    }
    
    
    // ------------------------- logics-----------------------------------
    
    fileprivate func makeCountText() -> Text{
        return Text("\(counter)") // this is the way of using string variable to show
            .font(Font.system(size: 68))
            .bold()
    }
    
    fileprivate func makePlusCountButton() -> some View {
        return Button(action: {
            self.counter += 1
            print("+1 button tapped")
        }){
            Text("+1")
        }
        .frame(width: 130, height: 50, alignment: .center)
        .foregroundColor(.white)
        .background(Color.green)
        .cornerRadius(10)
        .font(.system(size: 25, weight: .bold, design: .rounded))
    }
    
    fileprivate func makeMinusCountButton() -> some View {
        return Button(action: {
            if self.counter < 1 {
                return
            }
            self.counter -= 1
            print("-1 button tapped")
        }){
            Text("-1")
                .frame(width: 130, height: 50, alignment: .center)
                .foregroundColor(.white)
        //                .overlay(RoundedRectangle(cornerRadius: 10).stroke())
                .background(Color.red)
                .cornerRadius(10)
                .font(.system(size: 25, weight: .bold, design: .rounded))
        }
        
    }
    
    fileprivate func makeResetButton() -> some View {
        return Button(action:{
            self.counter = 0
            print("Reseted")
        }){
            Text("Reset")
                .foregroundColor(.white)
                .bold()
        }
        .frame(maxWidth: 150, maxHeight: 50) // to fill the horizontal size
        .background(Color.cyan)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
    ?????? ?????????
 1. ????????? ??????????????? ????????? ????????? ??? ???????????? padding or frame??? ???????????? ???????????? ????????? ????????? ??????????
 -> ?????????????????? ???????????? ?????????????????? -1 ?????? (????????????)
 2. ?????? ???????????? ?????? ??????.. fileprivate ??? ?????? -> Text or -> some View ??? ????????? ????????? ????????????????
 -> visivility??? ?????????..? fileprivate??? ?????? ?????????????????? ????????? ?????????
 */
