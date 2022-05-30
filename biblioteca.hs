type Livro = (String, String, String, String, Int)
type Pessoa = (String, String, String, String)
type Emprestimo = (String, String, Data, Data, String)
type Data = (Int, Int, Int)

type Livros = [Livro]
type Pessoas = [Pessoa]
type Emprestimos = [Emprestimo]

l1::Livro
l1 = ("H123C9","Haskell","Thompson","Pearson",1999)
p1::Pessoa
p1 = ("BSI945","Ana Silva", "ana@email", "3322-1122")
e1::Emprestimo
e1 = ("H123C9","BSI200945",(12,9,2009),(20,9,2009),
"aberto")


bdLivro::Livros
bdLivro =
[("H123C9","Haskell","Thompson","Pearson",1999),
("H214C5","Haskell","S´a","Novatec",2006),
("S612C1","SGBD","Ramakrishnan","McGraw-Hill",2008),
("L433C5","Linguagens","Tucker","McGraw-Hill",2009)]

bdPessoa::Pessoas
bdPessoa =
[("BSI945","Ana Silva", "ana@email", "3322-1122"),
("BCC021","Antonio Matos", "ant@email", "1122-1100"),
("BSI030","Augusto Melo", "aug@email", "1234-1234")]

bdEmprestimo::Emprestimos
bdEmprestimo =
[("H123C9","BSI945",(12,9,2009),(20,09,2009),
"aberto"),
("L433C5","BCC021",(01,9,2009),(10,09,2009),
"encerrado")]
