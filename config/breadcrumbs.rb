crumb :root do
  link "Home", root_path
end

crumb :posts_index do
  link "投稿コラム一覧", posts_index_path
  parent :root
end