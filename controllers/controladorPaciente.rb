require './classes/paciente.rb'

def imprimeInformacao(acao,paciente)
    puts " Foi #{acao} paciente com nome #{paciente.nome} #{paciente.sobrenome} com telefone #{paciente.telefone}"
end
def criarPaciente(dados)
    nome, sobrenome, telefone = dados.split(',')
    if(!telefone)
        telefone = '(41)99999-9999'
    end
    paciente = Paciente.new({:nome => nome,
        :sobrenome => sobrenome,
        :telefone => telefone})
    paciente.save
    imprimeInformacao('criado',paciente)
end
# editar Paciente
# Remover Paciente