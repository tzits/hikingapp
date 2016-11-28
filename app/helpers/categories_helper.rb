module CategoriesHelper

  def find_weight(user)
    w = 0
    if current_user
      items = Item.find_by_sql("SELECT * FROM user_list_category_items WHERE user_id = #{user.id} AND list_id = #{params[:id]}")
      items.each do |i|
        w += (Item.find(i.item_id).weight)
      end
    end
    w
  end

end
