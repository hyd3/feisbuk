class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	# agrega una columna llamada user_id a la tabla statuses. 
  	# Este campo será entero (integer)
  	add_column :statuses, :user_id, :integer
  	# agrega un índice a la tabla statuses, en el campo user_id
  	# ya que haremos búsquedas sobre dicho campo
  	add_index :statuses, :user_id
  	# como ya hemos agregado una referencia al usuario, la columna
  	# name ya no es necesaria
  	remove_column :statuses, :name
  end
end
