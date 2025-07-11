# Projeto-SQL-Faculdade
Projeto SQL da faculdade, com consulta feita no SQL Server e no MySQL

# Etapas do trabalho:
## Primeira Etapa - Modelagem.
Tive que fazer um MER (Modelo Entidade-Relacionamento) com base nas seguintes regras de negocio.
<ul>
  <li>Funcionário – Deverão ser armazenados os seguintes dados: CPF, nome, telefone, e-mail, login e senha; </li>
  <li>Hotel – Deverão ser armazenados os seguintes dados: identificação do hotel, nome, categoria, telefone, e-mail e endereço, sendo o endereço composto por rua, número, complemento, bairro, CEP, cidade e estado  </li>
  <li>Quarto – Deverão ser armazenados os seguintes dados: identificação do quarto, número de leitos, tipo (standard, luxo ou suíte), preço da diária e status (disponível, ocupado ou manutenção)</li>
  <li>Hóspede – Deverão ser armazenados os seguintes dados: CPF, nome, telefone, e-mail e endereço, sendo o endereço composto por rua, número, complemento, bairro, CEP, cidade e estado </li>
  <li>Reserva – Deverão ser armazenados os seguintes dados: identificação da reserva, data de entrada, data de saída e status (ativa, cancelada ou concluída) </li>
  <li>Pagamento – Deverão ser armazenados os seguintes dados: identificação do pagamento, forma de pagamento (cartão, pix ou dinheiro), data do pagamento, valor total e status (pago ou pendente)  </li>
  <li>Um hotel possui um ou vários quartos</li>
  <li>Um ou vários funcionários trabalham em um hotel </li>
  <li>Um funcionário realiza uma ou várias reservas</li>
  <li>Um ou vários quartos fazem parte de uma ou várias reservas</li>
  <li>Um hóspede pode fazer uma ou várias reservas</li>
  <li>Uma reserva gera um pagamento </li>
</ul>

<img src = "">
