crumb :root do
  link "Home", root_path
end

crumb :posts_index do
  link "投稿コラム一覧", posts_index_path
  parent :root
end

crumb :static_pages_faq do
  link "FAQ", static_pages_faq_path
  parent :root
end

crumb :new_contact do
  link "お問い合わせ", new_contact_path
  parent :root
end

crumb :about_company do
  link "会社紹介", static_pages_company_path
  parent :root
end
