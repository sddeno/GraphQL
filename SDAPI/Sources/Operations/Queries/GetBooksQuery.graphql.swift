// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetBooksQuery: GraphQLQuery {
  public static let operationName: String = "GetBooks"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query GetBooks {
        books {
          __typename
          title
          author
        }
      }
      """#
    ))

  public init() {}

  public struct Data: SDAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SDAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("books", [Book?]?.self),
    ] }

    public var books: [Book?]? { __data["books"] }

    /// Book
    ///
    /// Parent Type: `Book`
    public struct Book: SDAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SDAPI.Objects.Book }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("title", String?.self),
        .field("author", String?.self),
      ] }

      public var title: String? { __data["title"] }
      public var author: String? { __data["author"] }
    }
  }
}
