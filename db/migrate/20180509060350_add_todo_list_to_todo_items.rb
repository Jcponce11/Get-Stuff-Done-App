class AddTodoListToTodoItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :todo_items, :todo_list_id, :index
    add_reference :todo_items, :todo_list, foreign_key: true
    add_column :todo_lists, :description, :text
  end
end
