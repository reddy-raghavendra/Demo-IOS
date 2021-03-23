//
//  ContentView.swift
//  Addition
//
//

import SwiftUI

struct ContentView: View {
    @State var number1 = "";
    @State var number2 = "";
    @State var result = "";
    @State var addition = 0;
    @State var b = 0;
    @State var a = 0;
    
    
    var body: some View {
            VStack{
                Form{
                Section{
                    TextField(/*@START_MENU_TOKEN@*/"Number 1"/*@END_MENU_TOKEN@*/, text: $number1)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                    TextField("Number 2", text: $number2)
                        .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                 }
                    Section{
                        TextField("Result", text: $result)
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }

                    Section{
                        Button(action: {
                            a = Int(number1) ?? 0;
                            b = Int(number2) ?? 0;
                            
                            addition = a + b;
                            
                            result = String(addition);
                        }, label: {
                            Text("Calculate")
                        })
                    }
                }
                
            }
         }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
