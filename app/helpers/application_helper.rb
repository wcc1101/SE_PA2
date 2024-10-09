module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    direction = column == params[:sort] && params[:direction] == "asc" ? "desc" : "asc"
    arrow = if column == params[:sort]
              params[:direction] == "asc" ? "↑" : "↓"
    else
              ""
    end
    link_to "#{title} #{arrow}".html_safe, { sort: column, direction: direction }
  end
  def highlight_if_sorted(column)
    "highlight" if @current_sort_column == column
  end

  def sort_arrow(column)
    if @current_sort_column == column
      @current_sort_direction == "asc" ? "\u2191" : "\u2193"
    else
      ""
    end
  end
end
