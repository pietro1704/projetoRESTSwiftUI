//
//  ContentView.swift
//  swiftuiProjetoREST
//
//  Created by Pietro Pugliesi on 14/02/20.
//  Copyright © 2020 Pietro Pugliesi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	@State private var tituloNota:String = ""
	
	var body: some View{
		TabView {
			
			//first view
			List{
				HStack {
					Text("data")
						.font(.body)
					Text("Titulo da nota")
						.font(.title)
				}
			}
				
			.tabItem {
				Image(systemName: "pencil.circle.fill")
				Text("Notas")
			}
			
			
			//first view
			VStack (alignment: .center){
				Text("Título da nota")
					
				TextField("titulo", text: $tituloNota)
				.padding()
				.cornerRadius(5)
				
			}
				
			.tabItem {
				Image(systemName: "plus")
				Text("adicionar nota")
			}
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
