
import Foundation
struct Node : Codable {
	let shortcode : String?
	let video_url : String?
	let edge_media_to_caption : Edge_media_to_caption?
	let edge_liked_by : Edge_liked_by?
	let __typename : String?
	let sharing_friction_info : Sharing_friction_info?
	let location : String?
	let thumbnail_resources : [Thumbnail_resources]?
	let felix_profile_grid_crop : String?
	let owner : Owner?
	let edge_media_to_tagged_user : Edge_media_to_tagged_user?
	let accessibility_caption : String?
	let product_type : String?
	let media_preview : String?
	let video_view_count : Int?
	let comments_disabled : Bool?
	let media_overlay_info : String?
	let dash_info : Dash_info?
	let is_video : Bool?
	let id : String?
	let edge_media_preview_like : Edge_media_preview_like?
	let thumbnail_src : String?
	let fact_check_information : String?
	let tracking_token : String?
	let fact_check_overall_rating : String?
	let gating_info : String?
	let display_url : String?
	let edge_media_to_comment : Edge_media_to_comment?
	let dimensions : Dimensions?
	let taken_at_timestamp : Int?
	let has_audio : Bool?

	enum CodingKeys: String, CodingKey {

		case shortcode = "shortcode"
		case video_url = "video_url"
		case edge_media_to_caption = "edge_media_to_caption"
		case edge_liked_by = "edge_liked_by"
		case __typename = "__typename"
		case sharing_friction_info = "sharing_friction_info"
		case location = "location"
		case thumbnail_resources = "thumbnail_resources"
		case felix_profile_grid_crop = "felix_profile_grid_crop"
		case owner = "owner"
		case edge_media_to_tagged_user = "edge_media_to_tagged_user"
		case accessibility_caption = "accessibility_caption"
		case product_type = "product_type"
		case media_preview = "media_preview"
		case video_view_count = "video_view_count"
		case comments_disabled = "comments_disabled"
		case media_overlay_info = "media_overlay_info"
		case dash_info = "dash_info"
		case is_video = "is_video"
		case id = "id"
		case edge_media_preview_like = "edge_media_preview_like"
		case thumbnail_src = "thumbnail_src"
		case fact_check_information = "fact_check_information"
		case tracking_token = "tracking_token"
		case fact_check_overall_rating = "fact_check_overall_rating"
		case gating_info = "gating_info"
		case display_url = "display_url"
		case edge_media_to_comment = "edge_media_to_comment"
		case dimensions = "dimensions"
		case taken_at_timestamp = "taken_at_timestamp"
		case has_audio = "has_audio"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		shortcode = try values.decodeIfPresent(String.self, forKey: .shortcode)
		video_url = try values.decodeIfPresent(String.self, forKey: .video_url)
		edge_media_to_caption = try values.decodeIfPresent(Edge_media_to_caption.self, forKey: .edge_media_to_caption)
		edge_liked_by = try values.decodeIfPresent(Edge_liked_by.self, forKey: .edge_liked_by)
		__typename = try values.decodeIfPresent(String.self, forKey: .__typename)
		sharing_friction_info = try values.decodeIfPresent(Sharing_friction_info.self, forKey: .sharing_friction_info)
		location = try values.decodeIfPresent(String.self, forKey: .location)
		thumbnail_resources = try values.decodeIfPresent([Thumbnail_resources].self, forKey: .thumbnail_resources)
		felix_profile_grid_crop = try values.decodeIfPresent(String.self, forKey: .felix_profile_grid_crop)
		owner = try values.decodeIfPresent(Owner.self, forKey: .owner)
		edge_media_to_tagged_user = try values.decodeIfPresent(Edge_media_to_tagged_user.self, forKey: .edge_media_to_tagged_user)
		accessibility_caption = try values.decodeIfPresent(String.self, forKey: .accessibility_caption)
		product_type = try values.decodeIfPresent(String.self, forKey: .product_type)
		media_preview = try values.decodeIfPresent(String.self, forKey: .media_preview)
		video_view_count = try values.decodeIfPresent(Int.self, forKey: .video_view_count)
		comments_disabled = try values.decodeIfPresent(Bool.self, forKey: .comments_disabled)
		media_overlay_info = try values.decodeIfPresent(String.self, forKey: .media_overlay_info)
		dash_info = try values.decodeIfPresent(Dash_info.self, forKey: .dash_info)
		is_video = try values.decodeIfPresent(Bool.self, forKey: .is_video)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		edge_media_preview_like = try values.decodeIfPresent(Edge_media_preview_like.self, forKey: .edge_media_preview_like)
		thumbnail_src = try values.decodeIfPresent(String.self, forKey: .thumbnail_src)
		fact_check_information = try values.decodeIfPresent(String.self, forKey: .fact_check_information)
		tracking_token = try values.decodeIfPresent(String.self, forKey: .tracking_token)
		fact_check_overall_rating = try values.decodeIfPresent(String.self, forKey: .fact_check_overall_rating)
		gating_info = try values.decodeIfPresent(String.self, forKey: .gating_info)
		display_url = try values.decodeIfPresent(String.self, forKey: .display_url)
		edge_media_to_comment = try values.decodeIfPresent(Edge_media_to_comment.self, forKey: .edge_media_to_comment)
		dimensions = try values.decodeIfPresent(Dimensions.self, forKey: .dimensions)
		taken_at_timestamp = try values.decodeIfPresent(Int.self, forKey: .taken_at_timestamp)
		has_audio = try values.decodeIfPresent(Bool.self, forKey: .has_audio)
	}

}
