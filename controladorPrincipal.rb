#!/usr/bin/env ruby
require './controllers/controladorPaciente.rb'
require './controllers/controladorRecurso.rb'
require './controllers/controladorProcedimento.rb'

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
        if(tabela.index('recurso'))
            criarRecurso(dados)
        end
        if(tabela.index('procedimento'))
            criarProcedimento(dados)
        end
    end
    if(comando.index('editar'))
        if(tabela.index('paciente'))
            editarPaciente(dados)
        end
        if(tabela.index('recurso'))
            editarRecurso(dados)
        end
        if(tabela.index('procedimento'))
            editarProcedimento(dados)
        end
    end
    if(comando.index('remover'))
        if(tabela.index('paciente'))
            removerPaciente(dados)
        end
        if(tabela.index('recurso'))
            removerRecurso(dados)
        end
        if(tabela.index('procedimento'))
            removerProcedimento(dados)
        end
    end
    input = gets.chomp
end