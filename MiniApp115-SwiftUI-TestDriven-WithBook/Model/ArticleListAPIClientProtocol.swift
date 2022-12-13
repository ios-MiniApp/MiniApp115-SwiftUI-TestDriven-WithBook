//
//  ArticleListAPIClientProtocol.swift
//  MiniApp115-SwiftUI-TestDriven-WithBook
//
//  Created by 前田航汰 on 2022/12/13.
//

import Foundation

protocol ArticleListAPIClientProtocol {
    func fetch(completion: @escaping (([Article]?) -> Void))
}
