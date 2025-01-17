import SwiftSyntax
import SwiftParser

import XCTest

final class StringInterpolationTests: XCTestCase {
  func testDeclInterpolation() throws {
    let funcSyntax: DeclSyntax =
      """
      func f(a: Int, b: Int) -> Int {
        a + b
      }
      """
    XCTAssertTrue(funcSyntax.is(FunctionDeclSyntax.self))
    XCTAssertEqual(funcSyntax.description,
      """
      func f(a: Int, b: Int) -> Int {
        a + b
      }
      """)
  }

  func testExprInterpolation() throws {
    let exprSyntax: ExprSyntax =
      """
      f(x + g(y), y.z)
      """
    XCTAssertTrue(exprSyntax.is(FunctionCallExprSyntax.self))

    let addIt: ExprSyntax = "w + \(exprSyntax)"
    XCTAssertTrue(addIt.is(SequenceExprSyntax.self))
  }

  func testStmtSyntax() throws {
    let collection: ExprSyntax = "[1, 2, 3, 4, 5]"
    let stmtSyntax: StmtSyntax = "for x in \(collection) { }"
    XCTAssertTrue(stmtSyntax.is(ForInStmtSyntax.self))
  }

  func testTypeInterpolation() throws {
    let tupleSyntax: TypeSyntax = "(Int, name: String)"
    XCTAssertTrue(tupleSyntax.is(TupleTypeSyntax.self))
    XCTAssertEqual(tupleSyntax.description, "(Int, name: String)")
    let fnTypeSyntax: TypeSyntax = "(String) async throws -> \(tupleSyntax)"
    XCTAssertTrue(fnTypeSyntax.is(FunctionTypeSyntax.self))
    XCTAssertEqual(fnTypeSyntax.description,
                   "(String) async throws -> (Int, name: String)")
  }

  func testPatternInterpolation() throws {
    let letPattern: PatternSyntax = "let x: Int"
    XCTAssertTrue(letPattern.is(ValueBindingPatternSyntax.self))
  }

  func testStructGenerator() throws {
    let name = "Type"
    let id = 17

    let structNode: DeclSyntax =
       """
       struct \(name) {
         static var id = \(id)
       }
       """
    XCTAssertTrue(structNode.is(StructDeclSyntax.self))
  }
}
