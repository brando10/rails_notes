#SETTING UP A CONNECTION ON EXTERNAL DB IN RAILS

database.yml file with mysql2

external_table:
  adapter: mysql2
  encoding: utf8
  database: db_name
  host: host_name
  username: user_name
  password: password


 #Create a class containing the connection in a model

class ExternalTable < ActiveRecord::Base
  establish_connection :external_table
end

#Instantiate the connection 

class ExternalTable < ActiveRecord::Base
  establish_connection :external_table

  def self.connect(val)
    a = self.connection.execute("SELECT * FROM table_bane WHERE column_name = #{val}")
  end
end

#Trigger anywhere inside the app

ExternalTable.connect(val)