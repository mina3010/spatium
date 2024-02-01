import 'package:DMI/core/data/model/responses/general_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String? after;
  final int? dist;
  final String? modhash;
  final String? geo_filter;
  final String? before;
  List<GeneralResponse>? children;
  final String? approved_at_utc;
  final String? subreddit;
  final String? selftext;
  final String? author_fullname;
  final bool? saved;
  final String? mod_reason_title;
  final int? gilded;
  final bool? clicked;
  final String? title;
  List<dynamic>? link_flair_richtext;
  final String? subreddit_name_prefixed;
  final bool? hidden;
  final int? pwls;
  final String? link_flair_css_class;
  final int? downs;
  final int? thumbnail_height;
  final String? top_awarded_type;
  final bool? hide_score;
  final String? name;
  final bool? quarantine;
  final String? link_flair_text_color;
  final double? upvote_ratio;
  final String? author_flair_background_color;
  final String? subreddit_type;
  final int? ups;
  final int? total_awards_received;
  final int? thumbnail_width;
  final String? author_flair_template_id;
  final bool? is_original_content;
  List<dynamic>? user_reports;
  final bool? is_reddit_media_domain;
  final bool? is_meta;
  final String? category;
  final String? link_flair_text;
  final bool? can_mod_post;
  final int? score;
  final String? approved_by;
  final bool? isCreatedFromAdsUi;
  final bool? authorPremium;
  final String? thumbnail;
  final String? authorFlairCssClass;
  List<dynamic>? authorFlairRichtext;
  final String? postHint;
  final String? contentCategories;
  final bool? isSelf;
  final String? modNote;
  final double? created;
  final String? linkFlairType;
  final int? wls;
  final String? removedByCategory;
  final String? bannedBy;
  final String? authorFlairType;
  final String? domain;
  final bool? allowLiveComments;
  final String? selftextHtml;
  final String? likes;
  final String? suggestedSort;
  final String? bannedAtUtc;
  final String? viewCount;
  final bool? archived;
  final bool? noFollow;
  final bool? isCrosspostable;
  final bool? pinned;
  final bool? over18;
  List<dynamic>? allAwardings;
  List<dynamic>? awarders;
  final bool? mediaOnly;
  final String? linkFlairTemplateId;
  final bool? canGild;
  final bool? spoiler;
  final bool? locked;
  final String? authorFlairText;
  List<dynamic>? treatmentTags;
  final bool? visited;
  final String? removedBy;
  final String? numReports;
  final String? distinguished;
  final String? subredditId;
  final bool? authorIsBlocked;
  final String? modReasonBy;
  final String? removalReason;
  final String? linkFlairBackgroundColor;
  final String? id;
  final bool? isRobotIndexable;
  final String? reportReasons;
  final String? author;
  final String? discussionType;
  final int? numComments;
  final bool? sendReplies;
  final String? whitelistStatus;
  final bool? contestMode;
  List<dynamic>? modReports;
  final bool? authorPatreonFlair;
  final String? authorFlairTextColor;
  final String? permalink;
  final String? parentWhitelistStatus;
  final bool? stickied;
  final String? url;
  final int? subredditSubscribers;
  final int? createdUtc;
  final int? numCrossposts;
  final bool? isVideo;
  final String? urlOverriddenByDest;

  Data({
    this.after,
    this.dist,
    this.modhash,
    this.geo_filter,
    this.before,
    this.approved_at_utc,
    this.subreddit,
    this.selftext,
    this.author_fullname,
    this.saved,
    this.mod_reason_title,
    this.gilded,
    this.clicked,
    this.title,
    this.link_flair_richtext,
    this.subreddit_name_prefixed,
    this.hidden,
    this.pwls,
    this.link_flair_css_class,
    this.downs,
    this.thumbnail_height,
    this.top_awarded_type,
    this.hide_score,
    this.name,
    this.quarantine,
    this.link_flair_text_color,
    this.upvote_ratio,
    this.author_flair_background_color,
    this.subreddit_type,
    this.ups,
    this.total_awards_received,
    this.thumbnail_width,
    this.author_flair_template_id,
    this.is_original_content,
    this.user_reports,
    this.is_reddit_media_domain,
    this.is_meta,
    this.category,
    this.link_flair_text,
    this.can_mod_post,
    this.score,
    this.approved_by,
    this.isCreatedFromAdsUi,
    this.authorPremium,
    this.thumbnail,
    this.authorFlairCssClass,
    this.authorFlairRichtext,
    this.postHint,
    this.contentCategories,
    this.isSelf,
    this.modNote,
    this.created,
    this.linkFlairType,
    this.wls,
    this.removedByCategory,
    this.bannedBy,
    this.authorFlairType,
    this.domain,
    this.allowLiveComments,
    this.selftextHtml,
    this.likes,
    this.suggestedSort,
    this.bannedAtUtc,
    this.viewCount,
    this.archived,
    this.noFollow,
    this.isCrosspostable,
    this.pinned,
    this.over18,
    this.allAwardings,
    this.awarders,
    this.mediaOnly,
    this.linkFlairTemplateId,
    this.canGild,
    this.spoiler,
    this.locked,
    this.authorFlairText,
    this.treatmentTags,
    this.visited,
    this.removedBy,
    this.numReports,
    this.distinguished,
    this.subredditId,
    this.authorIsBlocked,
    this.modReasonBy,
    this.removalReason,
    this.linkFlairBackgroundColor,
    this.id,
    this.isRobotIndexable,
    this.reportReasons,
    this.author,
    this.discussionType,
    this.numComments,
    this.sendReplies,
    this.whitelistStatus,
    this.contestMode,
    this.modReports,
    this.authorPatreonFlair,
    this.authorFlairTextColor,
    this.permalink,
    this.parentWhitelistStatus,
    this.stickied,
    this.url,
    this.subredditSubscribers,
    this.createdUtc,
    this.numCrossposts,
    this.isVideo,
    this.urlOverriddenByDest,
    this.children,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
