
import Foundation
struct Edge_mutual_followed_by : Codable {
	let count : Int?
	let edges : [String]?

	enum CodingKeys: String, CodingKey {

		case count = "count"
		case edges = "edges"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		count = try values.decodeIfPresent(Int.self, forKey: .count)
		edges = try values.decodeIfPresent([String].self, forKey: .edges)
	}

}
