/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Dash_info : Codable {
	let number_of_qualities : Int?
	let is_dash_eligible : Bool?
	let video_dash_manifest : String?

	enum CodingKeys: String, CodingKey {

		case number_of_qualities = "number_of_qualities"
		case is_dash_eligible = "is_dash_eligible"
		case video_dash_manifest = "video_dash_manifest"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		number_of_qualities = try values.decodeIfPresent(Int.self, forKey: .number_of_qualities)
		is_dash_eligible = try values.decodeIfPresent(Bool.self, forKey: .is_dash_eligible)
		video_dash_manifest = try values.decodeIfPresent(String.self, forKey: .video_dash_manifest)
	}

}