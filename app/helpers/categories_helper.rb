module CategoriesHelper

  def category_main_image(category)
    if category.articles.last.image.attached?
      link_to(image_tag(category.articles.last.image), category_path(category))
    else
      link_to(image_tag('design1.jpg'), category_path(category))
    end
  end

  def article_image(article)
    if article.image.attached?
      image_tag(article.image)
    else
      image_tag('style1.jpg')
    end
  end
end
