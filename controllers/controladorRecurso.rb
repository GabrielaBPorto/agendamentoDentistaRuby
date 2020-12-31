require './classes/recurso.rb'

def imprimeInformacaoRecurso(acao,recurso)
    puts " Foi #{acao} recurso com nome #{recurso.nome} com custo #{recurso.custo}"
end
def criarRecurso(dados)
    nome, custo = dados.split(',')
    recurso = Recurso.find_by_nome(nome)
    if(recurso)
        puts "recurso já cadastrado"
        return
    end
    recurso = Recurso.new({:nome => nome,
        :custo => custo})
    recurso.save
    imprimeInformacaoRecurso('criado',recurso)
end
def editarRecurso(dados)
    nome, custo = dados.split(',')
    if(!custo)
        puts "Sem custo, por favor defina um custo"
    end
    recurso = Recurso.find_by_nome(nome)
    if(!recurso)
        puts "O recurso com esse nome não existe"
        return
    end
    recurso.custo = custo
    recurso.save
    imprimeInformacaoRecurso('editado',recurso)
end
def removerRecurso(dados)
    nome = dados.split(',')
    recurso = Recurso.find_by_nome(nome)
    if(!recurso)
        puts "O recurso com esse nome não existe"
        return
    end
    recurso.destroy
    imprimeInformacaoRecurso('removido',recurso)
end