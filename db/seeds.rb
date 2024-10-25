# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
departments = [
  {
    name: "Recursos Humanos",
    description: "Responsável por organizar o pessoal e cultura organizacional",
    code: "RH001", 
    adress: {
      street: "Rua Marechal Deodoro",
      number: "123",
      complement: "Perto da Farmácia",
      neighborhood: "Paredões",
      city: "Mossoró",
      state: "Rio Grande do Norte",
      cep: "11111-111"
    },
    status: "Ativo"
  },

  {
    name: "Financeiro",
    description: "Responsável por tratar de todos os assuntos relacionados a finanças, com vista à concretização dos objetivos da empresa",
    code: "FC001", 
    adress: {
      street: "Rua Mario Bros",
      number: "456",
      complement: "Perto do Supermercado DeTudo",
      neighborhood: "Bocado",
      city: "Mossoró",
      state: "Rio Grande do Norte",
      cep: "22222-222"
    },
    status: "Ativo"
  },

  {
    name: "Administração",
    description: "Responsável por coordenar e organizar as atividades internas, como a gestão de recursos e processos",
    code: "AD001", 
    adress: {
      street: "Rua Zelda da Silva",
      number: "789",
      complement: "Próximo ao hospital",
      neighborhood: "Coisa Nova",
      city: "Mossoró",
      state: "Rio Grande do Norte",
      cep: "33333-333"
    },
    status: "Ativo"
  },

  {
    name: "Tecnologia da Informação",
    description: "Responsável por desenvolver soluções para o armazenamento, processamento, transmissão, acesso, segurança e uso de informações",
    code: "FC001", 
    adress: {
      street: "Rua Toph Beifong",
      number: "91011",
      complement: "Por trás da Escola do Amanhã",
      neighborhood: "Bocado",
      city: "Mossoró",
      state: "Rio Grande do Norte",
      cep: "44444-444"
    },
    status: "Ativo"
  },

  {
    name: "Infraestrutura",
    description: "Responsável por fornecer serviços básicos para a população, como: Energia, Transporte, Saneamento, Telecomunicações",
    code: "IE001", 
    adress: {
      street: "Rua Jake o Cão",
      number: "121314",
      complement: "Próximo a terra de Ooo",
      neighborhood: "Forro Baixo",
      city: "Mossoró",
      state: "Rio Grande do Norte",
      cep: "55555-555"
    },
    status: "Ativo"
  },

  {
    name: "Engenharia",
    description: "Responsável por planejar, executar e supervisionar projetos de infraestrutura urbana e obras públicas.",
    code: "EG001", 
    adress: {
      street: "Rua Arya Stark",
      number: "151617",
      complement: "Próximo a Muralha",
      neighborhood: "Norte de Westeros",
      city: "Mossoró",
      state: "Rio Grande do Norte",
      cep: "66666-666"
    },
    status: "Ativo"
  },
]

departments.each do |depart|
  Department.create(depart)
end