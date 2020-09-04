json.content  @comment.content
json.created_at @comment.created_at.strftime("%Y年%m月%d日%R")
json.user_id  @comment.user.id
json.user_name  @comment.user.name
json.user_image @comment.user.image.url