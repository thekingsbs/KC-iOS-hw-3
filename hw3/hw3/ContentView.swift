//
//  ContentView.swift
//  hw3
//
//  Created by Saleh Al Sedrah on 27/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var opacity = 0.8
    
    @State var expensesArray = [
        MyExpenses(store: "Adidas", paid: "26.500", image: "adidas", purchases: "Juventus T-Shirt") ,
        
        MyExpenses(store: "X-Cite", paid: "36.000", image: ("xcite"), purchases: "Apple AirTag") ,
        
        MyExpenses(store: "Trolley", paid: "0.500", image: "trolley", purchases: "Water") ,
        
        MyExpenses(store: "Zara", paid: "30.750", image: "zara", purchases: "Hoodie")
    ]
    
    var body: some View {
        
        ZStack {
            
            Color.yellow
                .ignoresSafeArea()
                .opacity(opacity)
            
            VStack {
                
            
            Text("My Expenses")
                .font(.system(size: 40, weight: .bold, design: .monospaced))
            
            
                List(expensesArray) {
                    
                    expense in
                    
                    HStack {
                        
                        Image(expense.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        Spacer()
                        
                        VStack {
                            Text(expense.store)
                            
                            Text("\(expense.paid)")
                            
                            Text(expense.purchases)
                            
                            
                        }.padding()
                       
                        
                    }
                    
                }.frame(width: 430, height: 275, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                
                Slider(value: $opacity, in: 0.0...1.0)
                
            }
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct MyExpenses: Identifiable {
    
    let id = UUID()
    
    var store: String
    var paid : String
    var image : String
    var purchases : String
    
    
}
