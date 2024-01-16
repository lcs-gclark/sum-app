//
//  ContentView.swift
//  StepperExample
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @State var base1: Int = 1
    
    // MARK: Stored properties
    @State var base2: Int = 1
    
    // MARK: Computed properties
    var summed: Int {
        return base1 + base2
    }
    var multiplyed: Int {
        return base1 * base2
    }
    var subtracted: Int {
        return base1 - base2
    }
    var divided: Int {
        return base1 / base2
    }

    var body: some View {
        VStack {
            
            Spacer()
            
           
            HStack {
                Spacer()
                Text("\(base1)")
                    .font(.system(size: 90))
            }
            Stepper(value: $base1, label: {
                Text("select first number")
            })
              
Spacer()
            HStack {
                Text("+")
                    .font(.system(size: 90))
                Spacer()
                
                Text("\(base2)")
                    .font(.system(size: 90))
            }
            Stepper(value: $base2, label: {
                Text("select second number")
            })
            Spacer()

            HStack {
                Spacer()
                Text("\(summed)")
                    .font(.system(size: 90))
            }
         
            HStack {
                Button {} label: {
                VStack {
                Text("+")
                Text("add").font(.body)
                }
                }
                Spacer()
                Button {} label: {
                VStack {
                Text("-")
                Text("subtract").font(.body)
                }
                }
                Spacer()
                Button {} label: {
                VStack {
                Text("×")
                Text("multiply").font(.body)
                }
                }
                Spacer()
                Button { var summed: Int {
                    return base1 * base2
                }} label: {
                VStack {
                Text("÷")
                Text("divide").font(.body)
                }
                }
            }
            
        
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

