module ApplicationHelper
  def default_meta_tags
    {
      site: "警備で働く情報なら｜セキュジョブ",
      title: "<%= yield(:title) || eatery-japan %>" ,
      description: "警備で働く情報ならセキュジョブ",
      keywords:    "警備,ジョブ",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      #icon: [href: image_url('favicon.ico')]
      # OGPの設定をしておくとfacebook, twitterなどの投稿を見た目よくしてくれます。
    }
  end
end
