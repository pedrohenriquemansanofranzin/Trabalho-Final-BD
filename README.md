  Esse é um repositório criado com a intenção de armazenar e expor nosso resultado no trabalho solicitado pelo Prof. Dr. Eduardo Pena na disciplina de Banco de Dados, do 2° período do curso de Bacharel em Ciência Da Computação, na Universidade Tecnológica Federal do Paraná no Campos de Campo Mourão. 
  Esse trabalho foi feito em um grupo de 5 alunos: Alan, João do Nascimento, Luis Felipe Gomes, Orlando Seiti Enokida Junior.
  O trabalho será dividido em 6 Fases, sendo elas especificadas logo abaixo:
    --Fase 1. Levantamento de Requisitos. Os grupos devem escolher um dos temas sugeridos e
    realizar um estudo detalhado do domínio do problema. O objetivo é entender quais
    dados são relevantes, como as informações se relacionam, e quais operações o sistema
    deverá realizar. Essa fase deve incluir:
    • Definição do tema escolhido e uma breve justificativa de sua relevância ou interesse.
    • Identificação dos atores envolvidos no domínio (ex: cliente, administrador, fornecedor, etc.).
    • Descrição das entidades principais que farão parte do banco de dados.
    • Sugestão inicial de possíveis relacionamentos entre entidades.
    • Levantamento dos requisitos funcionais, ou seja, o que o sistema deve ser capaz
    de fazer.
    • Alinhamento: Antes de iniciar a próxima fase, os grupos devem apresentar um
    resumo dos requisitos ao professor para validação. Esse alinhamento servirá para
    garantir que:
    – O escopo do projeto está adequado à carga horária e objetivos da disciplina.
    – O nível de complexidade está compatível com a fase de formação dos alunos.
    – Os requisitos possibilitam o uso de técnicas de modelagem e consulta em
    banco de dados.
    Entregável da Fase 1: Texto descritivo bem redigido e formatado com os itens acima.
  --Fase 2. Projeto Conceitual do Banco de Dados (Modelo ER)
    Com base no levantamento de requisitos previamente validado, os grupos deverão
    elaborar o modelo conceitual do banco de dados utilizando o Diagrama EntidadeRelacionamento (ER).
    Elementos obrigatórios no diagrama:
    • Todas as entidades identificadas na fase anterior, com seus respectivos atributos.
    • Definição clara das chaves primárias de cada entidade.
    • Representação de relacionamentos
    • Inclusão de atributos nos relacionamentos, se aplicável.
    • Distinção entre entidades fortes e fracas, se houver.
    Ferramentas e Padrão de modelagem: O diagrama deve ser construído utilizando uma
    ferramenta compatível com os Diagramas ER vistos em sala. Sugiro o draw.io, latex com
    tikz, ou o BR Modelo (https://www.brmodeloweb.com/lang/pt-br/index.html) . Os
    grupos devem seguir os exemplos em aula, respeitando a simbologia clássica (retângulos para entidades, losangos para relacionamentos, elipses para atributos, etc.).
    Entregável da Fase 2: Modelo Conceitual do Banco de Dados (Diagrama ER), exportado em formato PDF ou imagem de alta resolução.
  --Fase 3. Mapeamento do Modelo de Dados (Projeto Lógico do Banco de Dados).
    Nesta etapa, os grupos devem transformar o modelo conceitual (Diagrama ER) em
    modelo lógico relacional. Isso envolve definir as tabelas, listar seus atributos e indicar
    as chaves primárias e estrangeiras. Utilize os procedimentos de mapeamento vistos em
    aula.
    Exemplo:
    CLIENTE(id_cliente, nome, email)
    PEDIDO(id_pedido, id_cliente (referencia Cliente), data)
    Entregável da Fase 3: Arquivo texto com o modelo lógico do banco de dados: tabelas,
    atributos, chaves primárias (PK) e estrangeiras (FK).
  --Fase 4. Normalização do Banco de Dados na 3ª Forma Normal
    Os grupos devem aplicar as regras de normalização para garantir que o modelo lógico
    esteja consistente, sem redundâncias e livre de anomalias. O resultado deve ser um
    modelo relacional na 3ª Forma Normal (3FN), conforme discutido em aula.
    A entrega deve conter as tabelas já ajustadas e normalizadas, com indicação clara das
    chaves primárias e estrangeiras.
    Entregável da Fase 4: Arquivo com as tabelas normalizadas até a 3ª Forma Normal
    (3FN), com identificação de PK e FK. Use o mesmo formato usado na fase 3. Inclua
    também todas as dependências funcionais identificadas nas tabelas.
  --Fase 5. Implementação em SQL Nesta etapa, os grupos devem criar o esquema físico do banco
de dados, implementando o modelo lógico normalizado em um Sistema de Gerenciamento de Banco de Dados (SGBD). Os alunos deverão:
    • Criar todas as tabelas para o PostgreSQL utilizando SQL/DDL (Data Definition
    Language).
    • Implementar todas as constraints necessárias: chaves primárias, chaves estrangeiras, constraints de unicidade, NOT NULL, CHECK, etc.
    • Preencher as tabelas com dados de teste representativos (pelo menos 10 registros
    em cada tabela principal).
    • Cada integrante do grupo deve desenvolver pelo menos 3 consultas SQL significativa que demonstre as funcionalidades do banco de dados.
    Entregável da Fase 5: Script SQL contendo a criação de todas as tabelas (CREATE TABLE), inserção de dados de teste (INSERT INTO) e as consultas SQL desenvolvidas,
    com comentários explicativos.
  --Fase 6. Desenvolvimento com ORM Nesta fase, os alunos devem desenvolver uma camada
de acesso a dados utilizando Object-Relational Mapping (ORM) para o banco de dados
implementado na fase anterior. Esta etapa compreende:
    (a) Mapeamento das Entidades:
    • Criar classes que representam as tabelas do banco de dados do projeto anterior.
    • Utilizar um framework ORM (SQLAlchemy para Python ou Hibernate para
    Java) para mapear as relações entre as classes e as tabelas do banco de dados.
    • Tomar cuidado especial ao mapear relações muitos-para-muitos (NxN), relações um-para-muitos (1xN) e relações um-para-um (1x1).
    • Realizar as decisões de projeto necessárias para refletir a estrutura do banco
    de dados original sem alterá-la. Ou seja, o código ORM não pode alterar o
    esquema do Banco de dados projetado/criado nas fases 4 e 5.
    (b) Operações CRUD:
    • Implementar código para conectar ao banco de dados existente utilizando as
    classes mapeadas.
    • Desenvolver funcionalidades para inserir (Create), recuperar (Read), atualizar (Update) e excluir (Delete) registros no banco de dados.
    • Garantir que as operações de manipulação de dados respeitem as constraints
    do banco de dados.
    (c) Consultas:
    • Cada aluno deve implementar pelo menos 3 consultas utilizando a API de
    consulta do ORM escolhido.
    • As consultas devem demonstrar a capacidade de manipular dados através dos
    relacionamentos entre entidades.
    Entregável da Fase 6:
    • Código fonte completo do projeto.
    • Arquivo README detalhado contendo:
    – Instruções passo a passo para instalação das dependências necessárias
    – Procedimento para conexão com o banco de dados
    – Comandos para execução do código e testes das funcionalidades
    • Scripts ou instruções para criação e população do banco de dados, caso necessário.
  --Avaliação Final
    A nota final do projeto será composta pela entrega de cada fase, considerando pontualidade,
    qualidade técnica e participação individual, conforme a tabela a seguir..
    ![image](https://github.com/user-attachments/assets/3e7a773b-f8ac-4f8d-ae9c-f5e0145df5ec)
