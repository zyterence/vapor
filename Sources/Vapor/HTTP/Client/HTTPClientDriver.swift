public protocol ClientDriver {
    func request(_ method: Method, url: String, headers: Headers, query: [String: String], body: HTTP.Body) throws -> HTTP.Response
}

extension ClientDriver {
    public func get(_ url: String, headers: Headers = [:], query: [String: String] = [:], body: HTTP.Body = []) throws -> HTTP.Response {
        return try request(.get, url: url, headers: headers, query: query, body: body)
    }
    public func post(_ url: String, headers: Headers = [:], query: [String: String] = [:], body: HTTP.Body = []) throws -> HTTP.Response {
        return try request(.post, url: url, headers: headers, query: query, body: body)
    }
    public func put(_ url: String, headers: Headers = [:], query: [String: String] = [:], body: HTTP.Body = []) throws -> HTTP.Response {
        return try request(.put, url: url, headers: headers, query: query, body: body)
    }
    public func patch(_ url: String, headers: Headers = [:], query: [String: String] = [:], body: HTTP.Body = []) throws -> HTTP.Response {
        return try request(.patch, url: url, headers: headers, query: query, body: body)
    }
    public func delete(_ url: String, headers: Headers = [:], query: [String: String] = [:], body: HTTP.Body = []) throws -> HTTP.Response {
        return try request(.delete, url: url, headers: headers, query: query, body: body)
    }
}