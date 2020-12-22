/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct User : Codable {
	let highlight_reel_count : Int?
	let is_business_account : Bool?
	let id : String?
	let restricted_by_viewer : String?
	let followed_by_viewer : Bool?
	let connected_fb_page : String?
	let has_ar_effects : Bool?
	let external_url : String?
	let is_joined_recently : Bool?
	let profile_pic_url : String?
	let edge_saved_media : Edge_saved_media?
	let edge_media_collections : Edge_media_collections?
	let should_show_category : Bool?
	let country_block : Bool?
	let fbid : String?
	let biography : String?
	let edge_follow : Edge_follow?
	let full_name : String?
	let follows_viewer : Bool?
	let has_clips : Bool?
	let business_category_name : String?
	let category_name : String?
	let edge_related_profiles : Edge_related_profiles?
	let edge_mutual_followed_by : Edge_mutual_followed_by?
	let requested_by_viewer : Bool?
	let is_private : Bool?
	let profile_pic_url_hd : String?
	let has_blocked_viewer : Bool?
	let category_enum : String?
	let username : String?
	let edge_owner_to_timeline_media : Edge_owner_to_timeline_media?
	let blocked_by_viewer : Bool?
	let has_channel : Bool?
	let external_url_linkshimmed : String?
	let edge_followed_by : Edge_followed_by?
	let has_guides : Bool?
	let has_requested_viewer : Bool?
	let edge_felix_video_timeline : Edge_felix_video_timeline?
	let is_verified : Bool?
	let overall_category_name : String?

	enum CodingKeys: String, CodingKey {

		case highlight_reel_count = "highlight_reel_count"
		case is_business_account = "is_business_account"
		case id = "id"
		case restricted_by_viewer = "restricted_by_viewer"
		case followed_by_viewer = "followed_by_viewer"
		case connected_fb_page = "connected_fb_page"
		case has_ar_effects = "has_ar_effects"
		case external_url = "external_url"
		case is_joined_recently = "is_joined_recently"
		case profile_pic_url = "profile_pic_url"
		case edge_saved_media = "edge_saved_media"
		case edge_media_collections = "edge_media_collections"
		case should_show_category = "should_show_category"
		case country_block = "country_block"
		case fbid = "fbid"
		case biography = "biography"
		case edge_follow = "edge_follow"
		case full_name = "full_name"
		case follows_viewer = "follows_viewer"
		case has_clips = "has_clips"
		case business_category_name = "business_category_name"
		case category_name = "category_name"
		case edge_related_profiles = "edge_related_profiles"
		case edge_mutual_followed_by = "edge_mutual_followed_by"
		case requested_by_viewer = "requested_by_viewer"
		case is_private = "is_private"
		case profile_pic_url_hd = "profile_pic_url_hd"
		case has_blocked_viewer = "has_blocked_viewer"
		case category_enum = "category_enum"
		case username = "username"
		case edge_owner_to_timeline_media = "edge_owner_to_timeline_media"
		case blocked_by_viewer = "blocked_by_viewer"
		case has_channel = "has_channel"
		case external_url_linkshimmed = "external_url_linkshimmed"
		case edge_followed_by = "edge_followed_by"
		case has_guides = "has_guides"
		case has_requested_viewer = "has_requested_viewer"
		case edge_felix_video_timeline = "edge_felix_video_timeline"
		case is_verified = "is_verified"
		case overall_category_name = "overall_category_name"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		highlight_reel_count = try values.decodeIfPresent(Int.self, forKey: .highlight_reel_count)
		is_business_account = try values.decodeIfPresent(Bool.self, forKey: .is_business_account)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		restricted_by_viewer = try values.decodeIfPresent(String.self, forKey: .restricted_by_viewer)
		followed_by_viewer = try values.decodeIfPresent(Bool.self, forKey: .followed_by_viewer)
		connected_fb_page = try values.decodeIfPresent(String.self, forKey: .connected_fb_page)
		has_ar_effects = try values.decodeIfPresent(Bool.self, forKey: .has_ar_effects)
		external_url = try values.decodeIfPresent(String.self, forKey: .external_url)
		is_joined_recently = try values.decodeIfPresent(Bool.self, forKey: .is_joined_recently)
		profile_pic_url = try values.decodeIfPresent(String.self, forKey: .profile_pic_url)
		edge_saved_media = try values.decodeIfPresent(Edge_saved_media.self, forKey: .edge_saved_media)
		edge_media_collections = try values.decodeIfPresent(Edge_media_collections.self, forKey: .edge_media_collections)
		should_show_category = try values.decodeIfPresent(Bool.self, forKey: .should_show_category)
		country_block = try values.decodeIfPresent(Bool.self, forKey: .country_block)
		fbid = try values.decodeIfPresent(String.self, forKey: .fbid)
		biography = try values.decodeIfPresent(String.self, forKey: .biography)
		edge_follow = try values.decodeIfPresent(Edge_follow.self, forKey: .edge_follow)
		full_name = try values.decodeIfPresent(String.self, forKey: .full_name)
		follows_viewer = try values.decodeIfPresent(Bool.self, forKey: .follows_viewer)
		has_clips = try values.decodeIfPresent(Bool.self, forKey: .has_clips)
		business_category_name = try values.decodeIfPresent(String.self, forKey: .business_category_name)
		category_name = try values.decodeIfPresent(String.self, forKey: .category_name)
		edge_related_profiles = try values.decodeIfPresent(Edge_related_profiles.self, forKey: .edge_related_profiles)
		edge_mutual_followed_by = try values.decodeIfPresent(Edge_mutual_followed_by.self, forKey: .edge_mutual_followed_by)
		requested_by_viewer = try values.decodeIfPresent(Bool.self, forKey: .requested_by_viewer)
		is_private = try values.decodeIfPresent(Bool.self, forKey: .is_private)
		profile_pic_url_hd = try values.decodeIfPresent(String.self, forKey: .profile_pic_url_hd)
		has_blocked_viewer = try values.decodeIfPresent(Bool.self, forKey: .has_blocked_viewer)
		category_enum = try values.decodeIfPresent(String.self, forKey: .category_enum)
		username = try values.decodeIfPresent(String.self, forKey: .username)
		edge_owner_to_timeline_media = try values.decodeIfPresent(Edge_owner_to_timeline_media.self, forKey: .edge_owner_to_timeline_media)
		blocked_by_viewer = try values.decodeIfPresent(Bool.self, forKey: .blocked_by_viewer)
		has_channel = try values.decodeIfPresent(Bool.self, forKey: .has_channel)
		external_url_linkshimmed = try values.decodeIfPresent(String.self, forKey: .external_url_linkshimmed)
		edge_followed_by = try values.decodeIfPresent(Edge_followed_by.self, forKey: .edge_followed_by)
		has_guides = try values.decodeIfPresent(Bool.self, forKey: .has_guides)
		has_requested_viewer = try values.decodeIfPresent(Bool.self, forKey: .has_requested_viewer)
		edge_felix_video_timeline = try values.decodeIfPresent(Edge_felix_video_timeline.self, forKey: .edge_felix_video_timeline)
		is_verified = try values.decodeIfPresent(Bool.self, forKey: .is_verified)
		overall_category_name = try values.decodeIfPresent(String.self, forKey: .overall_category_name)
	}

}