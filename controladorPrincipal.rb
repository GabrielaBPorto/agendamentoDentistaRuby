#!/usr/bin/env ruby
require './controllers/controladorPaciente.rb'


input = gets.chomp
while(!input.index('end'))
    if(input == '')
        input = gets.chomp
        next
    end
    comando, tabela, dados = input.split(' ')
    if(comando.index('inserir'))
        if(tabela.index('paciente'))
            criarPaciente(dados)
        end
    end
    input = gets.chomp
end