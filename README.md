# Gestão de Vendas e Estoque

Este projeto contém uma coleção de queries SQL otimizadas, projetadas para analisar e manipular dados de forma eficiente, utilizando técnicas como `NOT EXISTS` para melhorar o desempenho em cenários que envolvem bancos de dados relacionais.

## Descrição

Gestão de Vendas e Estoque é um projeto que reúne consultas SQL otimizadas para facilitar a análise e o gerenciamento de dados relacionados a clientes, produtos, vendas, estoque e funcionários. O objetivo é fornecer soluções eficientes para cenários comuns de negócios, como identificar produtos sem vendas, clientes inativos, estoque insuficiente e métricas de vendas por marca e loja, utilizando as melhores práticas em bancos de dados relacionais.

## Tecnologias Utilizadas

- **SQL**: Linguagem de consulta estruturada para manipulação de dados.
- **Sistema de Banco de Dados**: Compatível com qualquer sistema relacional, como PostgreSQL, MySQL ou SQL Server.

## Queries Incluídas

1. **Listar clientes que não realizaram nenhuma compra**:
   - Query para encontrar clientes que não possuem pedidos associados.
2. **Listar produtos que não foram comprados**:
   - Identifica produtos que não possuem itens relacionados em pedidos.
3. **Listar produtos sem estoque**:
   - Recupera produtos que estão sem estoque ou não listados na tabela de estoque.
4. **Agrupar a quantidade de vendas por marca em cada loja**:
   - Agrega a quantidade de vendas por marca em cada loja.
5. **Listar funcionários que não estejam associados a pedidos**:
   - Encontra funcionários que não possuem nenhum vínculo com pedidos no banco de dados.
