
import Foundation

struct Json4Swift_Base : Codable {
	let show_view_shop : Bool?
	let show_follow_dialog : Bool?
	let toast_content_on_load : String?
	let show_suggested_profiles : Bool?
	let profile_pic_edit_sync_props : String?
	let logging_page_id : String?
	let graphql : Graphql?

	enum CodingKeys: String, CodingKey {

		case show_view_shop = "show_view_shop"
		case show_follow_dialog = "show_follow_dialog"
		case toast_content_on_load = "toast_content_on_load"
		case show_suggested_profiles = "show_suggested_profiles"
		case profile_pic_edit_sync_props = "profile_pic_edit_sync_props"
		case logging_page_id = "logging_page_id"
		case graphql = "graphql"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		show_view_shop = try values.decodeIfPresent(Bool.self, forKey: .show_view_shop)
		show_follow_dialog = try values.decodeIfPresent(Bool.self, forKey: .show_follow_dialog)
		toast_content_on_load = try values.decodeIfPresent(String.self, forKey: .toast_content_on_load)
		show_suggested_profiles = try values.decodeIfPresent(Bool.self, forKey: .show_suggested_profiles)
		profile_pic_edit_sync_props = try values.decodeIfPresent(String.self, forKey: .profile_pic_edit_sync_props)
		logging_page_id = try values.decodeIfPresent(String.self, forKey: .logging_page_id)
		graphql = try values.decodeIfPresent(Graphql.self, forKey: .graphql)
	}

}
