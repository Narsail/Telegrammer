// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.


import HTTP

public extension Bot {

    /// Use this method to get a list of profile pictures for a user. Returns a UserProfilePhotos object.
    /// - Parameters:
    ///     - user_id: Unique identifier of the target user
    ///     - offset: Sequential number of the first photo to be returned. By default, all photos are returned.
    ///     - limit: Limits the number of photos to be retrieved. Values between 1—100 are accepted. Defaults to 100.
    /// - Returns: Future<UserProfilePhotos>. Throws on errors.
    /// - Note: Asynchronous method.
    ///
    /// [- SeeAlso: ]<https://core.telegram.org/bots/api#getuserprofilephotos>

    public struct GetUserProfilePhotosParams: JSONEncodable {
        var userId: Int64
        var offset: Int?
        var limit: Int?

        enum CodingKeys: String, CodingKey {
            case userId = "user_id"
            case offset = "offset"
            case limit = "limit"
        }

        public init(userId: Int64, offset: Int? = nil, limit: Int? = nil) {
            self.userId = userId
            self.offset = offset
            self.limit = limit
        }
    }

    @discardableResult
    public func getUserProfilePhotos(params: GetUserProfilePhotosParams) throws -> Future<UserProfilePhotos> {
        let body = try httpBody(for: params)
        let headers = httpHeaders(for: params)
        let response: Future<TelegramContainer<UserProfilePhotos>>
        response = try client.respond(endpoint: "getUserProfilePhotos", body: body, headers: headers)
        return response.flatMap(to: UserProfilePhotos.self) { try self.wrap($0) }
    }
}
