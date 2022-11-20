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
    질문 리스트
 1. 글씨를 눌러야지만 클릭이 되는데 왜 그런거고 padding or frame은 클릭되는 영역으로 인식이 안되는 건가요?
 -> 버튼이아니라 레이블에 값들을줘야함 -1 처럼 (수정했음)
 2. 함수 사용방법 문법 개념.. fileprivate 은 뭐고 -> Text or -> some View 의 정확한 의미는 무엇인가요?
 -> visivility를 나타앰..? fileprivate은 같은 파일내에서는 접근이 가능함
 */
