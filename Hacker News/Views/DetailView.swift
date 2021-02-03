//
//  DetailView.swift
//  Hacker News
//
//  Created by Benjamin Dange on 02/02/2021.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    
    let urlString: String?
    
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}


