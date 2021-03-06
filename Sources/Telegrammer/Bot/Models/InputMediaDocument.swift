// Telegrammer - Telegram Bot Swift SDK.
// This file is autogenerated by API/generate_wrappers.rb script.

/**
 Represents a general file to be sent.

 SeeAlso Telegram Bot API Reference:
 [InputMediaDocument](https://core.telegram.org/bots/api#inputmediadocument)
 */
public final class InputMediaDocument: Encodable {

    /// Custom keys for coding/decoding `InputMediaDocument` struct
    enum CodingKeys: String, CodingKey {
        case type = "type"
        case media = "media"
        case thumb = "thumb"
        case caption = "caption"
        case parseMode = "parse_mode"
    }

    /// Type of the result, must be document
    public var type: String

    /// File to send. Pass a file_id to send a file that exists on the Telegram servers (recommended), pass an HTTP URL for Telegram to get a file from the Internet, or pass “attach://<file_attach_name>” to upload a new one using multipart/form-data under <file_attach_name> name. More info on Sending Files »
    public var media: String

    /// Optional. Thumbnail of the file sent. The thumbnail should be in JPEG format and less than 200 kB in size. A thumbnail‘s width and height should not exceed 90. Ignored if the file is not uploaded using multipart/form-data. Thumbnails can’t be reused and can be only uploaded as a new file, so you can pass “attach://<file_attach_name>” if the thumbnail was uploaded using multipart/form-data under <file_attach_name>. More info on Sending Files »
    public var thumb: FileInfo?

    /// Optional. Caption of the document to be sent, 0-200 characters
    public var caption: String?

    /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    public var parseMode: String?


    public init (type: String, media: String, thumb: FileInfo? = nil, caption: String? = nil, parseMode: String? = nil) {
        self.type = type
        self.media = media
        self.thumb = thumb
        self.caption = caption
        self.parseMode = parseMode
    }
}
