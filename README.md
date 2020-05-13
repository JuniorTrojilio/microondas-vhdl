# Sistema para um forno de micro-ondas

 Dando continuidade às atividades da disciplina e ao desenvolvimento de habilidades de pesquisa e síntese
do conhecimento, consideradas de importância fundamental para o aluno, propomos o desenvolvimento do
trabalho relacionado ao controle de um forno de micro-ondas.

 A partir dos conteúdos veiculados na disciplina, indicamos como primeira atividade de avaliação
realizar a construção de um sistema em VHDL para o controle de um forno de micro-ondas. Para isto você
deverá seguir as orientações:

- O sistema deve funcionar como um forno de micro-ondas típico.
- Quando não está cozinhando um alimento, você deve ser capaz de entrar com o tempo de cozimento
desejado pressionando os números no teclado numérico.
- Cada número pressionado aparece à direita do display, e os outros dígitos se deslocam para a esquerda.
- Quando o botão iniciar é pressionado, se a porta estiver fechada, o tubo de magnetron é ativado e os
dígitos fazem uma contagem decrescente em minutos e segundos.
- Zeros à frente são eliminados no display.
- Se a porta for aberta ou o botão de parar for pressionado, o tempo para no valor atual e o magnetron
é desligado.
- Ao pressionar o botão limpar, a qualquer momento, força a contagem a zero (0).
- Quando a contagem chega a zero (0), o magnetron é desligado e o tempo lê zero (0).
- Se uma pessoa entra com um valor inicial para segundos maior que 59 (isto é, 60-99), o contador de
segundos deve contar de maneira decrescente deste valor até 00.

<img src="https://user-images.githubusercontent.com/39541807/81868949-8f723800-9549-11ea-891c-8b66ec38889b.png" align="center">

Figura 1: Diagrama de blocos para o sistema do forno. Fonte: (Tocci, 2011).

---

<p>< > with 💙 by <a href="https://github.com/juniortrojilio">Junior Trojilio</a> && Diogo T. M. Tamashiro</p>
