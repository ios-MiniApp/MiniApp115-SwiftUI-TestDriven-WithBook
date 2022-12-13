//
//  MiniApp115_SwiftUI_TestDriven_WithBookTests.swift
//  MiniApp115-SwiftUI-TestDriven-WithBookTests
//
//  Created by 前田航汰 on 2022/12/13.
//

import XCTest
import ViewInspector
@testable import MiniApp110_SwiftUI_TestDriven01
extension ArticleListView: Inspectable{}

final class MiniApp110_SwiftUI_TestDriven01Tests: XCTestCase {

    func test_タイトルが表示されていること() {
        let article = Article(title: "記事タイトル")
        let client = FakeArticleListAPIClient(fakeResponse: [article])

        let view = ArticleListView()
        let textLabel = try! view.inspect().zStack().vStack(0).text(0).string()

        XCTAssertEqual(textLabel, "記事タイトル")
    }

    func test_タイトル２が表示されていること() {
        let article = Article(title: "記事タイトル２")
        let client = FakeArticleListAPIClient(fakeResponse: [article])

        let view = ArticleListView()
        let textLabel = try! view.inspect().zStack().vStack(0).text(0).string()

        XCTAssertEqual(textLabel, "記事タイトル２")


    }

}

class FakeArticleListAPIClient: ArticleListAPIClientProtocol {
    let fakeResponse: [Article]
    init(fakeResponse: [Article]) {
        self.fakeResponse = fakeResponse
    }
    func fetch(completion: @escaping (([Article]?) -> Void)) {
        completion(fakeResponse)
    }
}
