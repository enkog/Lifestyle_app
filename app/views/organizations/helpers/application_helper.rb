module ApplicationHelper
  def handle_vote(article)
    if voted?(article)
      content_tag(:p, '', class: 'font-weight-bold mt-3')
    else
      link_to 'Vote', add_vote_path(article_id: article.id),
              class: 'btn btn-primary text-center w-25 mt-3 mb-3 p-2 bg-acumin-color text-white rounded nav-link ml-auto'
    end
  end

  def show_votes?(article)
    return unless article.votes.count.positive?

    content_tag(:p, "#{article.votes.count} vote(s)",
                class: 'w-50 m-auto font-weight-bold mt-3 alert alert-success rounded p-1')
  end
end
