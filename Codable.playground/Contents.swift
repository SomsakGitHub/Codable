import Foundation

//typealias Codable = Decodable & Encodable

let json = """
[
    {
        "name": "Paul",
        "age": 38
    },
    {
        "name": "Andrew",
        "age": 40
    }
]
"""

let data = Data(json.utf8)

struct User: Codable {
    var name: String
    var age: Int
}

let decoder = JSONDecoder()

do {
    let decoded = try decoder.decode([User].self, from: data)
    print(decoded[0].name)
} catch {
    print("Failed to decode JSON")
}
