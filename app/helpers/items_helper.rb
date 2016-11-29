module ItemsHelper
  def store_item(c,l,i)
    new_ucli = UserListCategoryItem.create(category_id: c, list_id: l, item_id: i.id, user_id: current_user.id)
    new_ucli.save
  end
end
