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

positions = [

  {
    name: "Diretor de TI",
    description: "Descrição do diretor de ti",
    department_id: 4,
    level: "Sênior",
    base_salary: 4000,
    requirements: "Requerimentos do diretor de ti",
    benefits: "Benefícios do diretor de ti",
    status: "Ativo"
  },
  
  {
    name: "Gerente de Projetos",
    description: "Descrição do gerente de projetos",
    department_id: 4,
    level: "Sênior",
    base_salary: 6000,
    requirements: "Requerimentos do gerente de projetos",
    benefits: "Benefícios do gerente de projetos",
    status: "Ativo"
  },

  {
    name: "Contator",
    description: "Descrição do contator",
    department_id: 2,
    level: "Júnior",
    base_salary: 3500,
    requirements: "Requerimentos do contator",
    benefits: "Benefícios do contator",
    status: "Ativo"
  },

  {
    name: "Engenheiro",
    description: "Descrição do engenheiro",
    department_id: 6,
    level: "Não se aplica",
    base_salary: 5000,
    requirements: "Requerimentos do engenheiro",
    benefits: "Benefícios do engenheiro",
    status: "Ativo"
  },

  {
    name: "Diretor de recursos humanos",
    description: "Descrição do diretor de recursos humanos",
    department_id: 1,
    level: "Não se aplica",
    base_salary: 4000,
    requirements: "Requerimentos do diretor de recursos humanos",
    benefits: "Benefícios do diretor de recursos humanos",
    status: "Ativo"
  },

  {
    name: "Motorista",
    description: "Descrição do motorista",
    department_id: 5,
    level: "Não se aplica",
    base_salary: 1800,
    requirements: "Requerimentos do motorista",
    benefits: "Benefícios do motorista",
    status: "Ativo"
  },

  {
    name: "Administrador",
    description: "Descrição do administrador",
    department_id: 3,
    level: "Não se aplica",
    base_salary: 3000,
    requirements: "Requerimentos do administrador",
    benefits: "Benefícios do administrador",
    status: "Ativo"
  },

  {
    name: "Fiscal municipal",
    description: "Descrição do fiscal municipal",
    department_id: 5,
    level: "Sênior",
    base_salary: 3500,
    requirements: "Requerimentos do fiscal municipal",
    benefits: "Benefícios do fiscal municipal",
    status: "Ativo"
  }
]

departments.each do |depart|
  Department.create(depart)
end

positions.each do |position|
  Position.create(position)
end