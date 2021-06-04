module CategoriesHelper
  def category_main_image(category)
    if category.articles.last.image.attached?
      link_to(image_tag(category.articles.last.image), category_path(category))
    else
      link_to(image_tag('article.png'), category_path(category))
    end
  end

  def article_image(article)
    if article.image.attached?
      image_tag article.image, class: 'w-100 h-100'
    else
      image_tag('style1.jpg')
    end
  end
end
