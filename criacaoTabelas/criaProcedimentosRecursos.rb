require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "../Tabelas.sqlite3"

ActiveRecord::Base.connection.create_table :procedimento_recurso do |t|
    t.references :recurso, foreign_key: true
    t.references :procedimento, foreign_key: true
end