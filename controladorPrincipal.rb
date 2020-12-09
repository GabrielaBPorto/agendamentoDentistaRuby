#!/usr/bin/env ruby
require './controllers/controladorPaciente.rb'

linha = gets.chomp
comando, tabela, dados = linha.split(' ')
if(comando.index('inserir'))
    if(tabela.index('paciente'))
        nome, sobrenome, telefone = dados.split(',')
        criaPaciente(nome, sobrenome, telefone)
    end
end