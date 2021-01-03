require './classes/agendamento.rb'

require 'date'

def imprimeInformacaoAgendamento(acao,agendamento)
    puts " Foi #{acao} agendamento com data #{agendamento.data}"
end
def criarAgendamento(dados)
    data, hora = dados.split(',')
    dataQuebrada = data.split('/')
    horaQuebrada = hora.split(':')
    dataAgendamento = DateTime.new(dataQuebrada[2].to_i,dataQuebrada[1].to_i,dataQuebrada[0].to_i, horaQuebrada[0].to_i, horaQuebrada[1].to_i, horaQuebrada[2].to_i)
    if(Agendamento.find_by_data(dataAgendamento))
        puts "Já existe um agendamento nesse horário"
        return
    end
    agendamento = Agendamento.new({:data => dataAgendamento})
    agendamento.save
    imprimeInformacaoAgendamento('criado',agendamento)
end
def editarAgendamento(dados)
    nome, custo = dados.split(',')
    if(!custo)
        puts "Sem custo, por favor defina um custo"
    end
    agendamento = Agendamento.find_by_nome(nome)
    if(!agendamento)
        puts "O agendamento com esse nome não existe"
        return
    end
    agendamento.custo = custo
    agendamento.save
    imprimeInformacaoAgendamento('editado',agendamento)
end
def removerAgendamento(dados)
    nome = dados.split(',')
    agendamento = Agendamento.find_by_nome(nome)
    if(!agendamento)
        puts "O agendamento com esse nome não existe"
        return
    end
    agendamento.destroy
    imprimeInformacaoAgendamento('removido',agendamento)
end