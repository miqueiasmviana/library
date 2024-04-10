namespace :dev do
  desc "Configurando o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      %x(rails dev:add_book_currents)
      %x(rails dev:add_books)
    else
      puts "Você não está em ambiente de desenvolvimento"
    end
  end

  desc "Cadastra os Livros"
    task add_books: :environment do
      show_spinner("Cadastrando Livros") do
        books = [
        {
          cover: "https://m.media-amazon.com/images/I/71wKA7eCpnL._AC_UF1000,1000_QL80_.jpg",
          title: "The Musician's Way: A Guide to Practice, Performance, and Wellness",
          author: "Gerald Klickstein",
          description:"In The Musician's Way, veteran performer and educator Gerald Klickstein combines the latest research with his 30 years of professional experience to provide aspiring musicians with a roadmap to artistic excellence. Part I, Artful Practice, describes strategies to interpret and memorize compositions, fuel motivation, collaborate, and more. Part II, Fearless Performance, lifts the lid on the hidden causes of nervousness and shows how musicians can become confident performers. Part III, Lifelong Creativity, surveys tactics to prevent music-related injuries and equips musicians to tap their own innate creativity. Written in a conversational style, The Musician's Way presents an inclusive system for all instrumentalists and vocalists to advance their musical abilities and succeed as performing artists.",
          genre: "Teologia",
          publish_company: "Oxford university Press",
          page: "343",
          year_publish: "2009",
          book_current: BookCurrent.all.sample
          },
 
 
          {
          cover: "https://m.media-amazon.com/images/I/51lRMYwP-4L.jpg",
          title: "Harry Potter e a Pedra Filosova",
          author: "J. K. Rowling",
          description:"Harry Potter é um garoto cujos pais, feiticeiros, foram assassinados por um poderosíssimo bruxo quando ele ainda era um bebê. Ele foi levado, então, para a casa dos tios que nada tinham a ver com o sobrenatural. Pelo contrário. Até os 10 anos, Harry foi uma espécie de gata borralheira: maltratado pelos tios, herdava roupas velhas do primo gorducho, tinha óculos remendados e era tratado como um estorvo. No dia de seu aniversário de 11 anos, entretanto, ele parece deslizar por um buraco sem fundo, como o de Alice no país das maravilhas, que o conduz a um mundo mágico. Descobre sua verdadeira história e seu destino: ser um aprendiz de feiticeiro até o dia em que terá que enfrentar a pior força do mal, o homem que assassinou seus pais. O menino de olhos verde, magricela e desengonçado, tão habituado à rejeição, descobre, também, que é um herói no universo dos magos. Potter fica sabendo que é a única pessoa a ter sobrevivido a um ataque do tal bruxo do mal e essa é a causa da marca em forma de raio que ele carrega na testa. Ele não é um garoto qualquer, ele sequer é um feiticeiro qualquer ele é Harry Potter, símbolo de poder, resistência e um líder natural entre os sobrenaturais. A fábula, recheada de fantasmas, paredes que falam, caldeirões, sapos, unicórnios, dragões e gigantes, não é, entretanto, apenas um passatempo.",
          genre: "Fantasia",
          publish_company: "Rocco",
          page: "208",
          year_publish: "2011",
          book_current: BookCurrent.all.sample
          },
 
 
          {
          cover: "https://www.lojadobolseiro.com.br/uploads/images/2020/02/76-livro-o-hobbit-capa-smaug-j-r-r-tolkien-1582738560.jpg",
          title: "O Hobbit",
          author: "J. R. R. Tolkien",
          description:"Bilbo Bolseiro era um dos mais respeitáveis hobbits de todo o Condado até que, um dia, o mago Gandalf bate à sua porta. A partir de então, toda sua vida pacata e campestre soprando anéis de fumaça com seu belo cachimbo começa a mudar. Ele é convocado a participar de uma aventura por ninguém menos do que Thorin Escudo-de-Carvalho, um príncipe do poderoso povo dos Anãos.
 
 
          Esta jornada fará Bilbo, Gandalf e 13 anãos atravessarem a Terra-média, passando por inúmeros perigos, como os imensos trols, as Montanhas Nevoentas infestadas de gobelins ou a muito antiga e misteriosa Trevamata, até chegarem (se conseguirem) na Montanha Solitária. Lá está um incalculável tesouro, mas há um porém. Deitado em cima dele está Smaug, o Dourado, um dragão malicioso que... bem, você terá que ler para descobrir.
         
          Lançado em 1937, O Hobbit é um divisor de águas na literatura de fantasia mundial. Mais de 80 anos após a sua publicação, o livro que antecede os ocorridos em O Senhor dos Anéis continua arrebatando fãs de todas as idades, talvez pelo seu tom brincalhão com uma pitada de magia élfica, ou talvez porque J.R.R. Tolkien tenha escrito o melhor livro infantojuvenil de todos os tempo",
          genre: "Fantasia",
          publish_company: "WMF Martins Fontes",
          page: "328",
          year_publish: "2013",
          book_current: BookCurrent.all.sample
          },
 
 
          {
          cover: "https://m.media-amazon.com/images/I/81CGmkRG9GL._AC_UF1000,1000_QL80_.jpg",
          title: "O Nome do Vento - A Crônica do Matador do Rei: Primeiro Dia",
          author: "Patrick Rothfulls",
          description:"Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percurso.
 
 
          Da infância numa trupe de artistas itinerantes, passando pelos anos vividos numa cidade hostil e pelo esforço para ingressar na escola de magia, O nome do vento acompanha a trajetória de Kote e as duas forças que movem sua vida: o desejo de aprender o mistério por trás da arte de nomear as coisas e a necessidade de reunir informações sobre o Chandriano – os lendários demônios que assassinaram sua família no passado.
         
          Quando esses seres do mal reaparecem na cidade, um cronista suspeita de que o misterioso Kote seja o personagem principal de diversas histórias que rondam a região e decide aproximar-se dele para descobrir a verdade.
         
          Pouco a pouco, a história de Kote vai sendo revelada, assim como sua multifacetada personalidade – notório mago, esmerado ladrão, amante viril, herói salvador, músico magistral, assassino infame.
         
          Nessa provocante narrativa, o leitor é transportado para um mundo fantástico, repleto de mitos e seres fabulosos, heróis e vilões, ladrões e trovadores, amor e ódio, paixão e vingança.
         
          Mais do que a trama bem construída e os personagens cativantes, o que torna O nome do vento uma obra tão especial – que levou Patrick Rothfuss ao topo da lista de mais vendidos do The New York Times – é sua capacidade de encantar leitores de todas as idades.
         
          Devorei em um dia e já estou louco pelo próximo. Ele é muito bom, esse tal de Rothfuss. – George R. R. Martin, autor de A guerra dos tronos",
          genre: "Fantasia",
          publish_company: "Arqueiro",
          page: "656",
          year_publish: "2007",
          book_current: BookCurrent.all.sample
          },
 
          {
          cover: "https://m.media-amazon.com/images/I/91rGGj7JBhL._AC_UF1000,1000_QL80_.jpg",
          title: "O temor do sábio (A Crônica do Matador do Rei – Livro 2)",
          author: "Patrick Rothfuss",
          description:"Devorei em um dia e já estou louco pelo próximo. Ele é muito bom, esse tal de Rothfuss. – George R. R. Martin, autor de A guerra dos tronos

          O temor do sábio dá continuidade à impressionante história de Kvothe, o Arcano, o Sem-Sangue, o Matador do Rei.
          
          Quando é aconselhado a abandonar seus estudos na Universidade por um período, por causa de sua rivalidade com um membro da nobreza local, Kvothe é obrigado a tentar a vida em outras paragens.
          
          Em busca de um patrocinador para sua música, viaja mais de mil quilômetros até Vintas. Lá, é rapidamente envolvido na política da corte. Enquanto tenta cair nas graças de um nobre poderoso, Kvothe usa sua habilidade de arcanista para impedir que ele seja envenenado e lidera um grupo de mercenários pela floresta, a fim de combater um bando de ladrões perigosos.
          
          Ao longo do caminho, tem um encontro fantástico com Feluriana, uma criatura encantada à qual nenhum homem jamais pôde resistir ou sobreviver – até agora. Kvothe também conhece um guerreiro ademriano que o leva a sua terra, um lugar de costumes muito diferentes, onde vai aprender a lutar como poucos.
          
          Enquanto persiste em sua busca de respostas sobre o Chandriano, o grupo de criaturas demoníacas responsável pela morte de seus pais, Kvothe percebe como a vida pode ser difícil quando um homem se torna uma lenda de seu próprio tempo.",
          genre: "Fantasia",
          publish_company: "Editora Arqueiro",
          page: "960",
          year_publish: "2011",
          book_current: BookCurrent.all.sample
          },

          {
          cover: "https://m.media-amazon.com/images/I/812b+Dv8pvL._AC_UF1000,1000_QL80_.jpg",
          title: "A música do silêncio (A Crônica do Matador do Rei – Livro 3)",
          author: "Patrick Rothfuss",
          description:"Talvez você não queira comprar este livro. Eu sei, não se espera que um autor diga esse tipo de coisa. Mas prefiro ser honesto com você logo de saída. Acho justo avisar que esta é uma história um pouquinho estranha. Não gosto muito de dar spoilers, mas basta dizer que esta aqui é... diferente. Não tem um monte de coisas que se espera de uma história clássica.

          Por outro lado, se você gosta de palavras e mistérios e segredos, este livro tem muito a lhe oferecer. Se sente curiosidade sobre os Subterrâneos e a alquimia. Se deseja conhecer melhor os meandros ocultos do meu mundo...
          
          Bem, nesse caso, talvez este livro seja para você. – Patrick Rothfuss
          
          Debaixo da Universidade, bem lá no fundo, há um lugar escuro. Poucas pessoas sabem de sua existência, uma rede descontínua de antigas passagens e cômodos abandonados. Ali, bem no meio desse local esquecido, situado no coração dos Subterrâneos, vive uma jovem.
          
          Seu nome é Auri, e ela é cheia de mistérios.
          
          A música do silêncio é um recorte breve e agridoce de sua vida, uma pequena aventura só dela. Ao mesmo tempo alegre e inquietante, esta história nos oferece a oportunidade de enxergar o mundo pelos olhos de Auri. E nos dá a chance de conhecer algumas coisas que só ela sabe...
          
          Nesse livro, Patrick Rothfuss nos leva ao mundo de uma das personagens mais enigmáticas da série A Crônica do Matador do Rei. Repleto de segredos e mistérios, A música do silêncio é uma narrativa sobre uma jovem ferida em um mundo devastado.",
          genre: "Fantasia",
          publish_company: "Editora Arqueiro",
          page: "144",
          year_publish: "2014",
          book_current: BookCurrent.all.sample
          },

          {
          cover: "https://m.media-amazon.com/images/I/81hCVEC0ExL._AC_UF1000,1000_QL80_.jpg",
          title: "O Senhor dos Anéis: A Sociedade do Anel",
          author: "J. R. R. Tolkien",
          description:"O volume inicial de O Senhor dos Anéis, lançado originalmente em julho de 1954, foi o primeiro grande épico de fantasia moderno, conquistando milhões de leitores e se tornando o padrão de referência para todas as outras obras do gênero até hoje. A imaginação prodigiosa de J.R.R. Tolkien e seu conhecimento profundo das antigas mitologias da Europa permitiram que ele criasse um universo tão complexo e convincente quanto o mundo real.

            A Sociedade do Anel começa no Condado, a região rural do oeste da Terra-média onde vivem os diminutos e pacatos hobbits. Bilbo Bolseiro, um dos raros aventureiros desse povo, cujas peripécias foram contadas em O Hobbit, resolve ir embora do Condado e deixa sua considerável herança nas mãos de seu jovem parente Frodo.
            
            O mais importante legado de Bilbo é o anel mágico que costumava usar para se tornar invisível. No entanto, o mago Gandalf, companheiro de aventuras do velho hobbit, revela a Frodo que o objeto é o Um Anel, a raiz do poder demoníaco de Sauron, o Senhor Sombrio, que deseja escravizar todos os povos da Terra-média. A única maneira de eliminar a ameaça de Sauron é destruir o Um Anel nas entranhas da própria montanha de fogo onde foi forjado.
            
            A revelação faz com que Frodo e seus companheiros hobbits Sam, Merry e Pippin deixem a segurança do Condado e iniciem uma perigosa jornada rumo ao leste. Ao lado de representantes dos outros Povos Livres que resistem ao Senhor Sombrio, eles formam a Sociedade do Anel.
            
            Alguém uma vez disse que o mundo dos leitores de língua inglesa se divide entre os que já leram O Senhor dos Anéis e os que um dia lerão o livro. Com esta nova tradução da obra, o fascínio dessa aventura atemporal ficará ainda mais evidente para os leitores brasileiros, tanto os que já conhecem a saga como os que estão prestes a descobrir seu encanto.",
          genre: "Fantasia",
          publish_company: "HarperCollins",
          page: "576",
          year_publish: "2019",
          book_current: BookCurrent.all.sample
          },

          {
          cover: "https://m.media-amazon.com/images/I/81lQ5N0QwJL._AC_UF1000,1000_QL80_.jpg",
          title: "O Senhor dos Anéis: As duas torres",
          author: "J. R. R. Tolkien",
          description:"Na luta das idéias novas, pouco importa saber quem tem razão e quem não tem. Saber-se-á mais tarde... se se souber... e tanto pior! A posteridade não é mais clarividente que os contemporâneos...” pensa Henry Barraud, um dos mais eminentes músicos de sua geração, cujos programas na Rádio Televisão Francesa conquistou em toda Europa audiências de massa. Neste livro que a Editora Perspectiva reedita por insistentes solicitações de professores, musicólogos, alunos e interessados na iniciação e pedagogia da música moderna, Barraud introduz o leitor nos diversos registros da criação de nosso tempo, detendo-se particularmente naqueles que parecem, à primeira vista, inacessíveis à compreensão do receptor tradicional, por causa de suas inovações estéticas e técnicas. Acompanha esta nova edição um CD",
          genre: "Arte",
          publish_company: "HarperCollins",
          page: "464",
          year_publish: "2019",
          book_current: BookCurrent.all.sample
          },

          {
          cover: "https://m.media-amazon.com/images/I/71+4uDgt8JL._AC_UF1000,1000_QL80_.jpg",
          title: "O Senhor dos Anéis: O retorno do rei",
          author: "J. R. R. Tolkien",
          description:"A guerra entre os Povos Livres da Terra-média e Sauron, o Senhor Sombrio da terra de Mordor, chega a seu clímax neste terceiro volume do romance O Senhor dos Anéis. As batalhas grandiosas que estão prestes a acontecer, no entanto, são apenas o pano de fundo para o verdadeiro drama: a missão quase suicida dos hobbits Frodo e Sam, que tentam destruir o Um Anel, fonte do poder de Sauron, infiltrando-se no coração do território do Inimigo.

            Em O Retorno do Rei, acompanhamos o mago Gandalf e o hobbit Pippin em sua visita à a majestosa cidade de Minas Tirith, que já foi o principal baluarte dos Homens contra a ameaça de Sauron, mas que está prestes a sucumbir diante da força avassaladora do Senhor Sombrio. Outros membros da Sociedade do Anel se juntam a Aragorn, herdeiro da longa linhagem dos reis de Minas Tirith, na tentativa de evitar que a antiga capital do reino de Gondor seja destruída.
            
            Nas fronteiras de Mordor, Sam resgata Frodo, e os dois hobbits partem para o último estágio de sua jornada rumo ao Monte da Perdição, uma jornada que testará os limites do corpo e da mente dos pequenos heróis. O livro inclui ainda numerosos apêndices, nos quais Tolkien explora detalhes da história, das línguas, dos alfabetos e até dos calendários de seu mundo ficcional.",
          genre: "Fantasia",
          publish_company: "HarperCollins",
          page: "528",
          year_publish: "2019",
          book_current: BookCurrent.all.sample
          },

          {
          cover: "https://m.media-amazon.com/images/I/81MoknVer8L._AC_UF1000,1000_QL80_.jpg",
          title: "O Silmarillion",
          author: "J. R. R. Tolkien",
          description:"O Silmarillion é o relato dos Dias Antigos da Primeira Era do mundo criado por J.R.R. Tolkien. É a história longínqua para a qual os personagens de O Senhor dos Anéis e O Hobbit olham para trás, e em cujos eventos alguns deles, como Elrond e Galadriel, tomaram parte. Os contos de O Silmarillion se passam na época em que Morgoth, o Primeiro Senhor Sombrio, habitava a Terra-média, e os Altos-Elfos guerreavam contra ele pela recuperação das Silmarils, as joias que continham a pura luz de Valinor. O livro começa com o Ainulindalë, o mito da criação do Universo, seguido pelo Valaquenta, onde estão descritas a natureza e os poderes de cada um dos deuses. Em o “Quenta Silmarillion” há o início da contagem dos dias em Arda (o mundo onde está inserido o continente da Terra-média), a história dos Elfos na Terra Abençoada do Oeste, seus êxodos e o desenrolar das guerras élficas em Beleriand, que culminaram com o final da Primeira Era. O Akallabêth narra o apogeu e a queda do reino da grande ilha de Númenor no final da Segunda Era. Por fim, Dos Anéis de Poder fala dos grandes eventos no final da Terceira Era, como narrado em O Senhor dos Anéis.

            O livro começa com O Ainulindalë, o mito da criação do Universo, seguido pelo Valaquenta, onde estão descritas a natureza e os poderes de cada um dos deuses. O Akallâbeth narra o apogeu e a queda do reino da grande ilha de Númenor no final da Segunda Era e Dos Anéis de Poder fala dos grandes eventos no final da Terceira Era, como narrado em O Senhor dos Anéis",
          genre: "Fantasia",
          publish_company: "HarperCollins",
          page: "496",
          year_publish: "2019",
          book_current: BookCurrent.all.sample
          }
          ]

      books.each do |book|
        Book.find_or_create_by!(book)
        end
      end
    end

  private

  desc "Cadastra Status"
      task add_book_currents: :environment do
        show_spinner("Cadastrando Status") do
          book_currents = [
        {current_type: "Want to Read"},
        {current_type: "Current Reading"},
        {current_type: "Finished"}
      ]
      book_currents.each do |book_current|
        BookCurrent.find_or_create_by!(book_current)
      end
    end
  end

  def show_spinner(msg_start, msg_end = "Concluído!", &block)
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
