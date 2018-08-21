# loja-spring-boot
gi# spring-boot-file-upload-example

Descreição: Loja virtual,
Aplicação de loja virtual para edição de produtos de uma loja virtual fictícia.

Notas da versão:
 - O projeto foi desenvolvido com eclipse oxygen;
 - Foram utilizado no desenvolvimento:
	- spring boot versão 1.5.8.RELEASE;
	- Apache tomcat embedded versão x.x.x;
	- Hibernate versão x.x.x;
	- webjars 3.3.6
		- Bootstrap versão 3.3.6;
		- Jquery imbutido versão 1.9.1;
	- MySql versão x.x.x;
	- JPA versão x.x.x;
	

Pré-requisitos:
 - java 1.8;
 - pom.xml, atualizar as versões de libs pre-existentes no projeto;
 - Apache TomCat embedded, não é preciso ter um servidor. O TomCat vai embutido no projeto;
 - application.properties, é necessário atualizar o arquivo com as seguintes configurações:
	- Mudar as informações de banco de dados, base de dados, porta de acesso, usuario e senha;	

 - SQL, um arquivo sql, caso haja a necessidade, pode ser importado com as funções de create e inserte
	de uma massa de dados para testes o lv.sql deve ser executado para
	povoar a base de dados, nesse caso as tabelas serão criadas novamente.

 - Hibernate e jpa, as configurações do hibernate estão disponiveis no arquivo application.properties,
	para fins de teste a upção de manipulação da base de dados esta como "spring.jpa.hibernate.ddl-auto=update"
	UPDATE, nessa opção a base de dados sera riada e sempre que houver atualizações ela sera automaticamente
	atualizada com as novas colunas,  

A aplicação inicia na pagina de listagem de produtos,
nessa página é possivel fazer um CRUD completo de produtos da loja,
contendo:
 - Uma tela de listagem;
 - Uma tela de cadastro / edição;
 - Exclusão de produtos.


Link Novo produto:
 - Acessa a pagina de cadatro de novos produtos;
 - A url da foto do produto é vinculada em um link web,
	Para fins de e economia de tempo optou-se por não,
	implementar um metodo de evio de fotos e pre-processamento de imagens,
	para tal, basta copiar o link de uma imagem do servidor ou da web;

Link vitrine de produtos:
 - Acessa uma pagina onde os produtos são mostrados conforme a vitrine da loja;
 - Essa pagina esta parcialmente finalizada;
 - Apenas visualização de produtos é possivel;


O que esta aplicação não contem:
 - autenticação de usuário;
 - Metodos de validação complexos;
 - Carrinho de compras ou opções de finalização de venda;

