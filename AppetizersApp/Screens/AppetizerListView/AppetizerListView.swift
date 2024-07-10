//
//  AppetizerListView.swift
//  AppetizersApp
//
//  Created by Elisheva Medioni on 22/05/2024.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    
    
    var body: some View {
        
        ZStack{
            NavigationView {
                
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle("Appetizers")
            }
            .onAppear { //when my NavigationView appears i want to call getAppetizers()
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
        
    }
    
    
}

#Preview {
    AppetizerListView()
}
