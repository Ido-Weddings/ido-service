# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Category.create(name: "Cerimonial")
  Category.create(name: "Fotografia")
  Category.create(name: "Alfaiataria")
  Category.create(name: "Decoração")
  Category.create(name: "Musica")
  SubCategory.create(name: "DJ", category_id: 5)
  SubCategory.create(name: "Banda", category_id: 5)

  Category.create(name: "Buffet")

  # Enterprises Cerimonial
  enterprise = Enterprise.create(name: "G4 Assessoria & Cerimonial",
                        description: "A G4 Assessoria & Cerimonial entende que o casamento é o ponto alto dos sonhos de duas pessoas que encontraram o amor. A partir dessa celebração começa uma nova etapa, nada melhor que seja celebrada com alegria e sem preocupações com a assessoria de profissionais competentes.",
                        telephone: "3344-1133",
                        cellphone: "8112-1212",
                        email: "g4_cerimonial@g4.com",
                        address: 'SRTVS Qd. 701 Bloco O Ed. Multiempresarial Salas 518/519 70.340-901 Brasília (Distrito Federal)',
                        )
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id,
                          category_id: 1,
                          base_price: 9000.0,
                          description: "Categoria de cerimonias",
                          capacity: 1000)

  category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id,
                                                    category_id: 2,
                                                    base_price: 200.0,
                                                    description: "Categoria de Fotografia",
                                                    capacity: 1000)


Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/6/2/6/1/graziela-e-acylino_13_156261.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/6/2/6/1/graziela-e-acylino-cerimonial-g4-eventos-19_13_156261.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/6/2/6/1/g4-139_13_156261.jpg"

enterprise = Enterprise.create(name: "Le Dom Eventos",
                        description: "Todo casamento requer planejamento e organização, e a Le Dom Eventos desempenha o papel com perfeição. Sob olhar de experiência, cuidando de todos os detalhes para que seus clientes tenham um dia livre de preocupações e possam aproveitar a sua celebração, a empresa se responsabiliza por todos os detalhes, desde o planejamento, com a escolha dos profissionais que vão trabalhar no enlace, até o pós-casamento.",
                        telephone: "3344-1133",
                        cellphone: "8112-1212",
                        email: "ledom_contato@ledom.com",
                        address: "Condomínio Lago Sul, casa 06, conjunto D . 71680361 Brasília (Distrito Federal)", latitude:-15.537 , longitude: -47.3357 , register_id: 04443, is_freelance:false )
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id,
                                                category_id: 1,
                                                base_price: 22000.0,
                                                description: "Categoria de cerimonias",
                                                capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/1/4/1/1/10307371-801112619919986-313546643399440135-n_13_141411.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/1/4/1/1/espaco-catetinho-3_13_141411.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/1/4/1/1/le-dom-26_13_141411.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/1/4/1/1/residencia-5_13_141411.jpg"

enterprise = Enterprise.create(name: "WW Cerimonial",
                        description: "A WW Cerimonial assessoria e organização de eventos, surgiu em Brasília, estabelecendo um novo conceito em organização de eventos, trazendo elegância e sofisticação em cada momento. Tendo como primazia, a perfeição em cada detalhe.",
                        telephone: "3344-1133",
                        cellphone: "8112-1212",
                        email: "WW_cerimonial@ww.com",
                        address: "Cl 212, Conjunto A, Bloco C 72542-220 Brasília (Distrito Federal)")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 1,
base_price: 9000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/6/0/6/pffa-web-20032015-casamento-dayanedavid-003_13_153606.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/6/0/6/pffa-web-20032015-casamento-dayanedavid-001_13_153606.jpg"

enterprise = Enterprise.create(name: "Meu Dia Perfeito",
                        description: "A Meu Dia Perfeito é formada por uma equipe profissional e dedicada ao setor de assessoria e cerimonial para eventos sociais e empresariais. Essa data é um dos momentos mais importantes de sua vida, é por isso que a empresa oferece soluções inovadoras para deixar seu casamento do jeito que sempre desejou!",
                        telephone: "3344-1133",
                        cellphone: "8112-1212",
                        email: "meudiaperfeito_suporte@meudiaperfeito.com",
                        address: " Rua das Aroeiras Quadra 107 l. 2/4 Apto 504b Águas Llaras 71920-700 Brasília (Distrito Federal)",
                        password: "12345678",
                        password_confirmation: "12345678")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 1,
base_price: 2000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/4/0/4/8/janine-e-renan-41_13_154048.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/4/0/4/8/-04e5496_13_154048.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/4/0/4/8/-cla0190_13_154048.jpg"

Enterprises Musician
enterprise = Enterprise.create(name: "RG Music",
                         description: "A música é a alma de uma celebração, e o repertório de um enlace deve ser executado por músicos que, além de comprometimento, contam com talento e sensibilidade. O grupo RG Music conta com profissionais que somam mais de 20 anos de experiência do mercado musical e, junto aos casais, organiza a seleção para cada enlace, de forma única, com instrumentos clássicos e uma interpretação únicas das canções.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "rg-music@rg-music.com",
                         address:  "Rua 03, Chácara 48, Lote 27, Vicente Pires 72005-685 Brasília (Distrito Federal)", latitude: -15.7801 , longitude: -47.9292 , register_id: 04443, is_freelance: true)
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 5,
base_price: 2300.0,
description: "Categoria de cerimonias")
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/9/2/1/2/img-3329_13_149212.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/9/2/1/2/dsc-9721_13_149212.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/9/2/1/2/img-3436_13_149212.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/9/2/1/2/rg-music-videos-1689_13_149212.jpg"

enterprise = Enterprise.create(name: "Clave de Sonhos",
                         description: "Com acordes harmônicos e notas de emoção, a Clave de Sonhos, garante todo sentimento e magia musical ao seu casamento. Formado para executar trilhas sonoras de história de amor, o grupo tem a oferecer toda solenidade e requinte ao seu grande dia, tornando a realização do seu sonho inesquecível.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "contatoclave@clavedossonhos.com",
                         address: "Rua 21 Norte, 71916-000, Brasília (Distrito Federal)")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 5,
base_price: 4000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/recepco-no-salo-oasis-300_13_152014.png"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/casamento-porto-vitoria_13_152014.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/casamento-1_13_152014.jpg"

enterprise = Enterprise.create(name: "Groove a Rigor",
                         description: "Um grupo formado por músicos profissionais onde a melodia fará seu importante papel em um dia muito especial, seu casamento. A Groove a Rigor vai alegrar, divertir e encantar a cada pessoa presente em seu grande dia dos sonhos. Serão momentos de fascinação e boas músicas para que sempre fique na lembrança.",
   											telephone: "3344-1133",
                         address: "Qna 01 - Lote 15 Loja 01 - Taguatinga, Brasília - DF, 72110-010 72110-010 Brasília (Distrito Federal)",
   											cellphone: "8112-1212",
                         email: "groovearigor@groovearigor.com")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 5,
base_price: 2000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/recepco-no-salo-oasis-300_13_152014.png"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/casamento-porto-vitoria_13_152014.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/casamento-1_13_152014.jpg"

enterprise = Enterprise.create(name: "Alysson Takaki",
                         description: "Alysson Takaki traz ao seu evento toda musicalidade e sofisticação que ele precisa para ser um grande acontecimento. Possui um apreciado talento e muito conhecimento técnico, coisas que aplica com muito carisma e seriedade em suas performances totalmente adequadas as mais variadas situações.",
                         address: " SGAS 910 Conjunto “B” Bloco “F” Sala 244 70040 Brasília (Distrito Federal)",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "musico-alysson-takaki@alyssomtakaki.com")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 5,
base_price: 2000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/casamento-porto-vitoria_13_152014.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/0/1/4/casamento-1_13_152014.jpg"

 # Enterprises Photography
enterprise = Enterprise.create(name: "Multifocco",
                         description: "A MultiFocco Fotografia foi fundada por Uelton e Raquel Lacerda, com a missão de realizar sonhos. Fotografia com amor, traduz em poucas palavras o que fazemos e por que fazemos. O momento mais importante da vida de um casal, sendo eternizado por nossas lentes sempre atentas, trazendo para sempre a lembrança deste único e verdadeiro instante. Somos contadores de historias, inéditas, emocionantes e eternas. Tudo de maneira incomparável e única.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "fotografiasmultifoco_contato@multifocofotografias.com",
                         address: " QNA 40 Lote 07 Casa 02 Taguatinga Norte 72110-400 Brasília (Distrito Federal)")
  category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 2,
  base_price: 5000.0,
  description: "Categoria de cerimonias",
  capacity: 1000)
  Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/7/2/1/5/adal-1132_13_87215.jpg"
  Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/7/2/1/5/a-3-copia_13_87215.jpg"
  Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/7/2/1/5/menino_13_87215.jpg"

enterprise = Enterprise.create(name: "Landscape",
                         description: "O seu casamento será visto de uma forma inovadora e sensacional. Com uma outra perspectiva e com grande criatividade a Landscape vai tornar seu esperado dia em um momento eterno e de grandes emoções. Serão fascinantes imagens captando cada detalhe de novos ângulos e enfoques.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "fotoslandscape@landscapefotografia.com",
                         address: "SHIS QI28 Conjunto 01 Casa 01 71670-210 Brasília (Distrito Federal)"
                         )
 category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 2,
 base_price: 3000.0,
 description: "Categoria de cerimonias",
 capacity: 1000)
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/11536515-1127816010567982-5886147625532177836-o_13_153720.jpg"

enterprise = Enterprise.create(name: "JK Foto e Filmagem",
                         description: "A JK Foto e Filmagem é uma empresa que vai levar até a sua festa equipamentos de alta qualidade, talento e muita sensibilidade na hora de disparar o flash para as fotos do seu casamento. Esta equipe trabalha com muita dedicação e criatividade.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "contato-jkff@jkff.com",
                         address: "QNP 26 conjunto A lote 24 72235-601 Ceilândia (Distrito Federal)")
 category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 2,
 base_price: 5000.0,
 description: "Categoria de cerimonias")
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"

 # Enterprises dress
enterprise = Enterprise.create(name: "D Blanc Sposa",
                         description: "A D Blanc Sposa é o lugar certo para a noiva que deseja destacar com todo esplendor a sua condição de protagonismo nesta data tão importante. Na loja você irá encontrar uma série de opções, modelos e designs exclusivos para compor a sua produção de casamento.",
   											capacity: "1000",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "blancsposanoivas@blancsposanoivas.com",
                         address: "QNB, 04 72115-040 Brasília (Distrito Federal)")
 category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 3,
 base_price: 1000.0,
 description: "Categoria de cerimonias",
 capacity: 1000)

 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"

enterprise = Enterprise.create(name: "Prometida Noivas e Festas",
                         description: "Expresse seu bom gosto através do seu visual, vestindo um dos vários modelos de vestidos que a Prometida Noivas e Festas tem ao seu dispor. Possui uma loja acolhedora e elegante em Brasília, na qual você vai se sentir totalmente à vontade para encontrar a peça que tanto busca.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         address: "Terceira Avenida, Loja, 1.202 70040 Brasília (Distrito Federal)",
                         email: "prometida-contato@prometidanoivas.com")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 3,
base_price: 4000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"


enterprise = Enterprise.create(name: "Seratta Modafesta",
                         description: "A Serrata Modafesta é uma empresa especialista em roupas para festas. Um momento especial merece uma roupa mais que especial, têm que ser elegante e sofisticada. Assim são as coleções dessa equipe. Todas as roupas feitas por eles, tem um acabamento de primeira e com tecidos de qualidade. Você vai estar deslumbrante.",
   											capacity: "1000",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "serattamodafesta@serattamodafesta.com",
                         address: "Brasília, Centro 70071 Brasília (Distrito Federal)"
                         )
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 3,
base_price: 2000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/3/7/2/0/1913500-1127814643901452-5706827823259546668-o_13_153720.jpg"

 # Enterprises Decoration
enterprise = Enterprise.create(name: "LD2eventos",
                         description: "A LD2eventos organiza sua decoração para que a sua cerimônia e/ou recepção seja o mais perfeita, o seu grande dia tem que está lindo para que seus convidados e vocês noivos guardem lindas lembranças do seu grande dia. Realizam festas de casamentos, debutantes, bodas, entre outras.",
   											capacity: "1000",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "ld2events@ld2eventos.com",
                         address: "CLSW 304 Bloco A Sala 131 Ed. Alpha Shopping 70736-631 Brasília (Distrito Federal)")
 category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 4,
 base_price: 10300.0,
 description: "Categoria de cerimonias",
 capacity: 1000)
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/9/1/8/10615443-525544754245624-5687534031394138918-n_13_142918.jpg"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/2/9/1/8/10492599-542023372597240-1115357197658204444-n_13_142918.jpg"

enterprise = Enterprise.create(name: "Feito do Seu Jeito",
                         description: "Com uma proposta de decoração de casamento cheia de personalidade e delicadeza, a Feito do seu jeito oferece um serviço totalmente personalizado que vai deixar o seu enlace com a cara dos noivos. De olho nas tendências internacionais e com especial atenção aos detalhes, a empresa idealiza projetos decorativos sustentáveis, evitando desperdícios e aproveitando ao máximo os materiais.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "feitodoseujeito@feitodoseujeito.com",
                         address: "Brasília, Centro 70071 Brasília (Distrito Federal)")
 category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 4,
 base_price: 1000.0,
 description: "Categoria de cerimonias",
 capacity: 1000)
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/0/9/0/0/decoraco-delicada.png"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/0/9/0/0/lembrancas-de-casamento.png"
 Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/0/9/0/0/detalhes-sobre-a-mesa.png"


 enterprise = Enterprise.create(name: "Keila Flores Decorações",
                         description: "Keila Flores Decorações é especialista em festas de casamento, levando até elas toda a infraestrutura necessária para proporcionar um ambiente sofisticado e charmoso aos noivos e seus convidados. Diferencia-se pelo atendimento exclusivo que presta aos seus clientes, transformando o desejo deles em realidade. Se você está buscando um estabelecimento sério, comprometido, o qual executa com dedicação e carinho um excelente trabalho, não precisa procura mais. Com a Keila Flores Decorações sua celebração não vai ser mais a mesma, mais do mesmo, e sim uma bela e delicada ocasião de muito bom gosto.",
   											telephone: "3344-1133",
   											cellphone: "8112-1212",
                         email: "marineidedeco@marineide.com",
                         address: " Brasília, Centro Brasília (Distrito Federal)")
category_enterprise = CategoryEnterprise.create(enterprise_id: enterprise.id, category_id: 4,
base_price: 2000.0,
description: "Categoria de cerimonias",
capacity: 1000)
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/5/7/1/8/181168-254572864654544-572234171-n_13_105718.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/5/7/1/8/20130728-151121_13_105718.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/5/7/1/8/20140520-162718_13_105718.jpg"
Picture.create category_enterprise_id: category_enterprise.id, url: "https://cdn0.casamentos.com.br/emp/fotos/5/7/1/8/310479-303009419728578-16434937-n_13_105718.jpg"

  user = User.create(name: "Yeltsin Suares", email: "jose@gmail.com", phone_number: "8885555512")
  Picture.create user_id: user.id, url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xat1/v/t1.0-9/12088084_510451149109474_7547830573876021270_n.jpg?oh=06d80ff7c78b0d67d78f25073f6eee22&oe=571A514A&__gda__=1458558613_6cc0c18e91510c08f55cc444b75767ad"

  Message.create(content: "eai , quando vai sair?", enterprise_id: 1, user_id: 1, posted_by_user: true)

  user = User.create(name: "Wesley Pereira", email: "felipe_marks@gmail.com", phone_number: "8885551212")
  Picture.create user_id: user.id, url: "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtp1/v/t1.0-1/12141791_1706434589580255_5599652143324961705_n.jpg?oh=605436b83c43058d7a5a6db4403ffde5&oe=56F034FB&__gda__=1458131061_97b4510888dc3822c07c99a298d96b07"

  user = User.create(name: "Alvaro Fernando", email: "maria@gmail.com", phone_number: "7075551854")
  Picture.create user_id: user.id, url: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash2/v/t1.0-9/10428647_765192140224790_285166654980918408_n.jpg?oh=4fd319a80cb68ce4375a7eb381c322c3&oe=56F23010&__gda__=1458146193_87efab93e26259e98036cd3fddd002e7"

  user = User.create(name: "Natalia Beltrao", email: "carla@gmail.com", phone_number: "5555648583")
  Picture.create user_id: user.id, url: "https://scontent-gru1-1.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/12189800_1027051053982940_6329825279224253855_n.jpg?oh=b5a1d891b2637bea84a4719e02fde1c8&oe=56EE134C"

  user = User.create(name: "Pompilio Lobato", email: "josefina@gmail.com", phone_number: "4155553695")
  Picture.create user_id: user.id, url: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-xaf1/t31.0-8/170044_10150142624069899_1437708_o.jpg"
