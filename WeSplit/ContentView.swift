//
//  ContentView.swift
//  WeSplit
//
//  Created by David Dolački on 20.06.2022..
//

import SwiftUI

struct ContentView: View {
    
    let students = ["Harry","Hermione","Ron"]
    
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView{
            Form{
                Picker("Odaberi svog učenika", selection: $selectedStudent){
                    ForEach(students,id: \.self){
                        Text($0)
                    }
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
