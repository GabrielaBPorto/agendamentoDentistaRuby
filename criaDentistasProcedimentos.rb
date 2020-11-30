require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "Tabelas.sqlite3"

ActiveRecord::Base.connection.create_table :dentista_procedimento do |t|
    t.references :dentista, foreign_key: true
    t.references :procedimento, foreign_key: true
end