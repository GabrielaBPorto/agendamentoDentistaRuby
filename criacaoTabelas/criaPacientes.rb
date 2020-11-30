require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection :adapter => "sqlite3",
                                        :database => "../Tabelas.sqlite3"

ActiveRecord::Base.connection.create_table :paciente do |t|
    t.string :nome
    t.string :sobrenome
    t.string :telefone
    t.string :endereco
end