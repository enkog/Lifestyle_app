module CategoriesHelper
  def category_main_image(category)
    if category.articles.first.image.attached?
      link_to(image_tag(category.articles.first.image), category_path(category))
    else
      link_to(image_tag('article.png'), category_path(category))
    end
  end
end
