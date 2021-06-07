module CategoriesHelper

  def category_main_image(category)
    if category.articles.last
      link_to(image_tag(category.articles.last.image), category_path(category))
    else
      link_to(cl_image_tag('https://res.cloudinary.com/enkodes/image/upload/v1622804045/acv14t51rtcoib7k34b7an1tcx3k.jpg'), category_path(category))
    end
  end

  def article_image(article)
    if article.image.attached?
      image_tag(article.image)
    else
      cl_image_tag('https://res.cloudinary.com/enkodes/image/upload/v1622567450/l19rqbirqs716wreev9u9uzvwqlc.jpg')
    end
  end
end
