//// Automatically generated by generate-swift-syntax
//// Do not edit directly!
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

// MARK: - BracedSyntax

public protocol BracedSyntax: SyntaxProtocol {
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `{`
  ///  - `╗`
  ///  - `╣`
  var leftBrace: TokenSyntax {
    get
    set
  }

  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `}`
  ///  - `╚`
  ///  - `╠`
  var rightBrace: TokenSyntax {
    get
    set
  }
}

extension BracedSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<BracedSyntax, T>, _ newChild: T) -> BracedSyntax {
    var copy: BracedSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `BracedSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: BracedSyntax.Protocol) -> Bool {
    return self.asProtocol(BracedSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `BracedSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: BracedSyntax.Protocol) -> BracedSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? BracedSyntax
  }
}

// MARK: - DeclGroupSyntax

public protocol DeclGroupSyntax: SyntaxProtocol, DeclSyntaxProtocol {
  var attributes: AttributeListSyntax {
    get
    set
  }

  var modifiers: DeclModifierListSyntax {
    get
    set
  }

  /// The token that introduces this declaration, eg. `class` for a class declaration.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `actor`
  ///  - `class`
  ///  - `enum`
  ///  - `extension`
  ///  - `protocol`
  ///  - `struct`
  var introducer: TokenSyntax {
    get
    set
  }

  var inheritanceClause: InheritanceClauseSyntax? {
    get
    set
  }

  /// A `where` clause that places additional constraints on generic parameters like `where Element: Hashable`.
  var genericWhereClause: GenericWhereClauseSyntax? {
    get
    set
  }

  var memberBlock: MemberBlockSyntax {
    get
    set
  }
}

extension DeclGroupSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<DeclGroupSyntax, T>, _ newChild: T) -> DeclGroupSyntax {
    var copy: DeclGroupSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `DeclGroupSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: DeclGroupSyntax.Protocol) -> Bool {
    return self.asProtocol(DeclGroupSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `DeclGroupSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: DeclGroupSyntax.Protocol) -> DeclGroupSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? DeclGroupSyntax
  }
}

// MARK: - EffectSpecifiersSyntax

public protocol EffectSpecifiersSyntax: SyntaxProtocol {
  var unexpectedBeforeAsyncSpecifier: UnexpectedNodesSyntax? {
    get
    set
  }

  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be one of the following kinds:
  ///  - `async`
  ///  - `reasync`
  var asyncSpecifier: TokenSyntax? {
    get
    set
  }

  var unexpectedBetweenAsyncSpecifierAndThrowsClause: UnexpectedNodesSyntax? {
    get
    set
  }

  var throwsClause: ThrowsClauseSyntax? {
    get
    set
  }

  var unexpectedAfterThrowsClause: UnexpectedNodesSyntax? {
    get
    set
  }
}

extension EffectSpecifiersSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<EffectSpecifiersSyntax, T>, _ newChild: T) -> EffectSpecifiersSyntax {
    var copy: EffectSpecifiersSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `EffectSpecifiersSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: EffectSpecifiersSyntax.Protocol) -> Bool {
    return self.asProtocol(EffectSpecifiersSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `EffectSpecifiersSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: EffectSpecifiersSyntax.Protocol) -> EffectSpecifiersSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? EffectSpecifiersSyntax
  }
}

// MARK: - FreestandingMacroExpansionSyntax

public protocol FreestandingMacroExpansionSyntax: SyntaxProtocol {
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `#`.
  var pound: TokenSyntax {
    get
    set
  }

  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `<identifier>`.
  var macroName: TokenSyntax {
    get
    set
  }

  var genericArgumentClause: GenericArgumentClauseSyntax? {
    get
    set
  }

  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `(`.
  var leftParen: TokenSyntax? {
    get
    set
  }

  var arguments: LabeledExprListSyntax {
    get
    set
  }

  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `)`.
  var rightParen: TokenSyntax? {
    get
    set
  }

  var trailingClosure: ClosureExprSyntax? {
    get
    set
  }

  var additionalTrailingClosures: MultipleTrailingClosureElementListSyntax {
    get
    set
  }
}

extension FreestandingMacroExpansionSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<FreestandingMacroExpansionSyntax, T>, _ newChild: T) -> FreestandingMacroExpansionSyntax {
    var copy: FreestandingMacroExpansionSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `FreestandingMacroExpansionSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: FreestandingMacroExpansionSyntax.Protocol) -> Bool {
    return self.asProtocol(FreestandingMacroExpansionSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `FreestandingMacroExpansionSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: FreestandingMacroExpansionSyntax.Protocol) -> FreestandingMacroExpansionSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? FreestandingMacroExpansionSyntax
  }
}

// MARK: - NamedDeclSyntax

public protocol NamedDeclSyntax: SyntaxProtocol {
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `<identifier>`.
  var name: TokenSyntax {
    get
    set
  }
}

extension NamedDeclSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<NamedDeclSyntax, T>, _ newChild: T) -> NamedDeclSyntax {
    var copy: NamedDeclSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `NamedDeclSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: NamedDeclSyntax.Protocol) -> Bool {
    return self.asProtocol(NamedDeclSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `NamedDeclSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: NamedDeclSyntax.Protocol) -> NamedDeclSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? NamedDeclSyntax
  }
}

// MARK: - MissingNodeSyntax

/// Represents a layout node that is missing in the source file.
/// 
/// See the types conforming to this protocol for examples of where missing nodes can occur.
public protocol MissingNodeSyntax: SyntaxProtocol {
  /// A placeholder, i.e. `<#placeholder#>`, that can be inserted into the source code to represent the missing node.
  ///
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `<identifier>`.
  var placeholder: TokenSyntax {
    get
    set
  }
}

extension MissingNodeSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<MissingNodeSyntax, T>, _ newChild: T) -> MissingNodeSyntax {
    var copy: MissingNodeSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `MissingNodeSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: MissingNodeSyntax.Protocol) -> Bool {
    return self.asProtocol(MissingNodeSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `MissingNodeSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: MissingNodeSyntax.Protocol) -> MissingNodeSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? MissingNodeSyntax
  }
}

// MARK: - ParenthesizedSyntax

public protocol ParenthesizedSyntax: SyntaxProtocol {
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `(`.
  var leftParen: TokenSyntax {
    get
    set
  }

  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `)`.
  var rightParen: TokenSyntax {
    get
    set
  }
}

extension ParenthesizedSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<ParenthesizedSyntax, T>, _ newChild: T) -> ParenthesizedSyntax {
    var copy: ParenthesizedSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `ParenthesizedSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: ParenthesizedSyntax.Protocol) -> Bool {
    return self.asProtocol(ParenthesizedSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `ParenthesizedSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: ParenthesizedSyntax.Protocol) -> ParenthesizedSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? ParenthesizedSyntax
  }
}

// MARK: - WithAttributesSyntax

public protocol WithAttributesSyntax: SyntaxProtocol {
  var attributes: AttributeListSyntax {
    get
    set
  }
}

extension WithAttributesSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithAttributesSyntax, T>, _ newChild: T) -> WithAttributesSyntax {
    var copy: WithAttributesSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithAttributesSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithAttributesSyntax.Protocol) -> Bool {
    return self.asProtocol(WithAttributesSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithAttributesSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithAttributesSyntax.Protocol) -> WithAttributesSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithAttributesSyntax
  }
}

// MARK: - WithCodeBlockSyntax

public protocol WithCodeBlockSyntax: SyntaxProtocol {
  var body: CodeBlockSyntax {
    get
    set
  }
}

extension WithCodeBlockSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithCodeBlockSyntax, T>, _ newChild: T) -> WithCodeBlockSyntax {
    var copy: WithCodeBlockSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithCodeBlockSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithCodeBlockSyntax.Protocol) -> Bool {
    return self.asProtocol(WithCodeBlockSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithCodeBlockSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithCodeBlockSyntax.Protocol) -> WithCodeBlockSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithCodeBlockSyntax
  }
}

// MARK: - WithGenericParametersSyntax

/// Syntax nodes that have generic parameters.
/// 
/// For example, functions or nominal types like `class` or `struct` can have generic parameters and have a generic where clause that restricts these generic parameters.
public protocol WithGenericParametersSyntax: SyntaxProtocol {
  /// The parameter clause that defines the generic parameters.
  var genericParameterClause: GenericParameterClauseSyntax? {
    get
    set
  }

  /// A `where` clause that places additional constraints on generic parameters like `where Element: Hashable`.
  var genericWhereClause: GenericWhereClauseSyntax? {
    get
    set
  }
}

extension WithGenericParametersSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithGenericParametersSyntax, T>, _ newChild: T) -> WithGenericParametersSyntax {
    var copy: WithGenericParametersSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithGenericParametersSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithGenericParametersSyntax.Protocol) -> Bool {
    return self.asProtocol(WithGenericParametersSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithGenericParametersSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithGenericParametersSyntax.Protocol) -> WithGenericParametersSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithGenericParametersSyntax
  }
}

// MARK: - WithModifiersSyntax

public protocol WithModifiersSyntax: SyntaxProtocol {
  var modifiers: DeclModifierListSyntax {
    get
    set
  }
}

extension WithModifiersSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithModifiersSyntax, T>, _ newChild: T) -> WithModifiersSyntax {
    var copy: WithModifiersSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithModifiersSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithModifiersSyntax.Protocol) -> Bool {
    return self.asProtocol(WithModifiersSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithModifiersSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithModifiersSyntax.Protocol) -> WithModifiersSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithModifiersSyntax
  }
}

// MARK: - WithOptionalCodeBlockSyntax

public protocol WithOptionalCodeBlockSyntax: SyntaxProtocol {
  var body: CodeBlockSyntax? {
    get
    set
  }
}

extension WithOptionalCodeBlockSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithOptionalCodeBlockSyntax, T>, _ newChild: T) -> WithOptionalCodeBlockSyntax {
    var copy: WithOptionalCodeBlockSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithOptionalCodeBlockSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithOptionalCodeBlockSyntax.Protocol) -> Bool {
    return self.asProtocol(WithOptionalCodeBlockSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithOptionalCodeBlockSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithOptionalCodeBlockSyntax.Protocol) -> WithOptionalCodeBlockSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithOptionalCodeBlockSyntax
  }
}

// MARK: - WithStatementsSyntax

public protocol WithStatementsSyntax: SyntaxProtocol {
  var statements: CodeBlockItemListSyntax {
    get
    set
  }
}

extension WithStatementsSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithStatementsSyntax, T>, _ newChild: T) -> WithStatementsSyntax {
    var copy: WithStatementsSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithStatementsSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithStatementsSyntax.Protocol) -> Bool {
    return self.asProtocol(WithStatementsSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithStatementsSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithStatementsSyntax.Protocol) -> WithStatementsSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithStatementsSyntax
  }
}

// MARK: - WithTrailingCommaSyntax

public protocol WithTrailingCommaSyntax: SyntaxProtocol {
  /// ### Tokens
  /// 
  /// For syntax trees generated by the parser, this is guaranteed to be `,`.
  var trailingComma: TokenSyntax? {
    get
    set
  }
}

extension WithTrailingCommaSyntax {
  /// Without this function, the `with` function defined on `SyntaxProtocol`
  /// does not work on existentials of this protocol type.
  @_disfavoredOverload
  public func with<T>(_ keyPath: WritableKeyPath<WithTrailingCommaSyntax, T>, _ newChild: T) -> WithTrailingCommaSyntax {
    var copy: WithTrailingCommaSyntax = self
    copy[keyPath: keyPath] = newChild
    return copy
  }
}

extension SyntaxProtocol {
  /// Check whether the non-type erased version of this syntax node conforms to
  /// `WithTrailingCommaSyntax`.
  /// Note that this will incur an existential conversion.
  public func isProtocol(_: WithTrailingCommaSyntax.Protocol) -> Bool {
    return self.asProtocol(WithTrailingCommaSyntax.self) != nil
  }

  /// Return the non-type erased version of this syntax node if it conforms to
  /// `WithTrailingCommaSyntax`. Otherwise return `nil`.
  /// Note that this will incur an existential conversion.
  public func asProtocol(_: WithTrailingCommaSyntax.Protocol) -> WithTrailingCommaSyntax? {
    return Syntax(self).asProtocol(SyntaxProtocol.self) as? WithTrailingCommaSyntax
  }
}

extension AccessorBlockSyntax: BracedSyntax {}

extension AccessorDeclSyntax: WithOptionalCodeBlockSyntax, WithAttributesSyntax {}

extension AccessorEffectSpecifiersSyntax: EffectSpecifiersSyntax {}

extension AccessorParametersSyntax: ParenthesizedSyntax {}

extension ActorDeclSyntax: DeclGroupSyntax, NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension ArrayElementSyntax: WithTrailingCommaSyntax {}

extension AssociatedTypeDeclSyntax: NamedDeclSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension AttributedTypeSyntax: WithAttributesSyntax {}

extension AvailabilityArgumentSyntax: WithTrailingCommaSyntax {}

extension CatchClauseSyntax: WithCodeBlockSyntax {}

extension CatchItemSyntax: WithTrailingCommaSyntax {}

extension ClassDeclSyntax: DeclGroupSyntax, NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension ClosureCaptureSyntax: WithTrailingCommaSyntax {}

extension ClosureExprSyntax: BracedSyntax, WithStatementsSyntax {}

extension ClosureParameterClauseSyntax: ParenthesizedSyntax {}

extension ClosureParameterSyntax: WithTrailingCommaSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension ClosureShorthandParameterSyntax: WithTrailingCommaSyntax {}

extension ClosureSignatureSyntax: WithAttributesSyntax {}

extension CodeBlockSyntax: BracedSyntax, WithStatementsSyntax {}

extension ConditionElementSyntax: WithTrailingCommaSyntax {}

extension DeclModifierDetailSyntax: ParenthesizedSyntax {}

extension DeclNameArgumentsSyntax: ParenthesizedSyntax {}

extension DeferStmtSyntax: WithCodeBlockSyntax {}

extension DeinitializerDeclSyntax: WithAttributesSyntax, WithModifiersSyntax, WithOptionalCodeBlockSyntax {}

extension DictionaryElementSyntax: WithTrailingCommaSyntax {}

extension DifferentiabilityArgumentSyntax: WithTrailingCommaSyntax {}

extension DoExprSyntax: WithCodeBlockSyntax {}

extension DoStmtSyntax: WithCodeBlockSyntax {}

extension DocumentationAttributeArgumentSyntax: WithTrailingCommaSyntax {}

extension EditorPlaceholderDeclSyntax: WithAttributesSyntax, WithModifiersSyntax {}

extension EnumCaseDeclSyntax: WithAttributesSyntax, WithModifiersSyntax {}

extension EnumCaseElementSyntax: WithTrailingCommaSyntax {}

extension EnumCaseParameterClauseSyntax: ParenthesizedSyntax {}

extension EnumCaseParameterSyntax: WithTrailingCommaSyntax, WithModifiersSyntax {}

extension EnumDeclSyntax: DeclGroupSyntax, NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension ExpressionSegmentSyntax: ParenthesizedSyntax {}

extension ExtensionDeclSyntax: DeclGroupSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension ForStmtSyntax: WithCodeBlockSyntax {}

extension FunctionDeclSyntax: NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax, WithOptionalCodeBlockSyntax {}

extension FunctionEffectSpecifiersSyntax: EffectSpecifiersSyntax {}

extension FunctionParameterClauseSyntax: ParenthesizedSyntax {}

extension FunctionParameterSyntax: WithTrailingCommaSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension FunctionTypeSyntax: ParenthesizedSyntax {}

extension GenericArgumentSyntax: WithTrailingCommaSyntax {}

extension GenericParameterSyntax: WithTrailingCommaSyntax, WithAttributesSyntax {}

extension GenericRequirementSyntax: WithTrailingCommaSyntax {}

extension GuardStmtSyntax: WithCodeBlockSyntax {}

extension IfExprSyntax: WithCodeBlockSyntax {}

extension ImportDeclSyntax: WithAttributesSyntax, WithModifiersSyntax {}

extension InheritedTypeSyntax: WithTrailingCommaSyntax {}

extension InitializerDeclSyntax: WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax, WithOptionalCodeBlockSyntax {}

extension LabeledExprSyntax: WithTrailingCommaSyntax {}

extension LabeledSpecializeArgumentSyntax: WithTrailingCommaSyntax {}

extension LifetimeSpecifierArgumentSyntax: WithTrailingCommaSyntax {}

extension MacroDeclSyntax: NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension MacroExpansionDeclSyntax: FreestandingMacroExpansionSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension MacroExpansionExprSyntax: FreestandingMacroExpansionSyntax {}

extension MemberBlockSyntax: BracedSyntax {}

extension MissingDeclSyntax: MissingNodeSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension MissingExprSyntax: MissingNodeSyntax {}

extension MissingPatternSyntax: MissingNodeSyntax {}

extension MissingStmtSyntax: MissingNodeSyntax {}

extension MissingSyntax: MissingNodeSyntax {}

extension MissingTypeSyntax: MissingNodeSyntax {}

extension OperatorDeclSyntax: NamedDeclSyntax {}

extension PatternBindingSyntax: WithTrailingCommaSyntax {}

extension PlatformVersionItemSyntax: WithTrailingCommaSyntax {}

extension PoundSourceLocationSyntax: ParenthesizedSyntax {}

extension PrecedenceGroupDeclSyntax: BracedSyntax, NamedDeclSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension PrecedenceGroupNameSyntax: WithTrailingCommaSyntax {}

extension PrimaryAssociatedTypeSyntax: WithTrailingCommaSyntax {}

extension ProtocolDeclSyntax: DeclGroupSyntax, NamedDeclSyntax, WithAttributesSyntax, WithModifiersSyntax {}

extension RepeatStmtSyntax: WithCodeBlockSyntax {}

extension SourceFileSyntax: WithStatementsSyntax {}

extension SpecializeTargetFunctionArgumentSyntax: WithTrailingCommaSyntax {}

extension StructDeclSyntax: DeclGroupSyntax, NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension SubscriptDeclSyntax: WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension SwitchCaseItemSyntax: WithTrailingCommaSyntax {}

extension SwitchCaseSyntax: WithStatementsSyntax {}

extension SwitchExprSyntax: BracedSyntax {}

extension TupleExprSyntax: ParenthesizedSyntax {}

extension TuplePatternElementSyntax: WithTrailingCommaSyntax {}

extension TuplePatternSyntax: ParenthesizedSyntax {}

extension TupleTypeElementSyntax: WithTrailingCommaSyntax {}

extension TupleTypeSyntax: ParenthesizedSyntax {}

extension TypeAliasDeclSyntax: NamedDeclSyntax, WithAttributesSyntax, WithGenericParametersSyntax, WithModifiersSyntax {}

extension TypeEffectSpecifiersSyntax: EffectSpecifiersSyntax {}

extension VariableDeclSyntax: WithAttributesSyntax, WithModifiersSyntax {}

extension WhileStmtSyntax: WithCodeBlockSyntax {}
