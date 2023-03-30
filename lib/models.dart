import 'package:hive_flutter/hive_flutter.dart';
import 'package:rastros_da_mata/plants.dart';

//box reference

final myBox = Hive.box('mybox');

//write method
void writeData() {
  //FRUTOS
  myBox.put('fruit1', Plants(
    tipe: 'fruit',
    name: 'Tomate',
    imgUrl: 'assets/images/fruits/tomate.jpg',
    description: '',
    harvest: '45/56 dias',
    developmentEta: '+10 dias',
    idealTemperature: '20ºC a 26ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez ao dia; já nas temperaturas mais quentes, regue 2 vezes ao dia.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Coloque de duas a cinco sementes em cada recipiente a no máximo 1cm de profundidade, deixando posteriormente apenas uma ou duas plantas por recipiente;\n- Se o tomate for de crescimento indeterminado ou misto, coloque um suporte de no mínimo 1.5m de altura ou mais;\n- Caso seja de crescimento determinado, o suporte não será necessário;\n- Retire plantas invasoras.',
    replanting: 'Quando as mudas atingem de 15 a 25cm de altura, e parte do caule pode ser enterrado para propiciar o surgimento de mais raízes',
  ));
  myBox.put('fruit2', Plants(
    tipe: 'fruit',
    name: 'Morango',
    imgUrl: 'assets/images/fruits/morango.jpg',
    description: '',
    harvest: '60/80 dias',
    developmentEta: '20 dias',
    idealTemperature: '13ºC e 26ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez ao dia; já nas temperaturas mais quentes, regue 2 vezes ao dia mas nunca durante a noite ou no fim do dia.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Corte uma camada fina da casca onde estão as sementes, coloque-a sobre o solo e cubra com mais de 1cm de terra, regando logo em seguida;\n- Remova seus brotos, pois além de roubarem muita energia da planta, podem impedir a planta de frutificar.',
    replanting: 'Quando as mudas desenvolverem seu segundo conjunto de folhas verdadeiras.'
  ));
  myBox.put('fruit3', Plants(
    tipe: 'fruit',
    name: 'Abacaxi',
    description: '',
    harvest: '547 dias',
    developmentEta: 'desconhecido',
    idealTemperature: '22ºC e 32ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez ao dia; já nas temperaturas mais quentes, regue 2 vezes ao dia.',
    sunlight: '4/6h diárias',
    observations: 'Esta fruta não possui sementes!',
    planting: '- Corte a coroa do Abacaxi e a coloque em um copo com água, que será trocada 1 vez por dia para evitar musgos e aguarde o surgimento de raízes;\n- Assim que suas raízes brotarem, transfira a coroa para um vaso ou parte do terreno que deseja usar, certificando-se de que apenas o caule seja enterrado e não suas folhas.',
    replanting: 'Assim que suas raízes se formarem',
    imgUrl: 'assets/images/fruits/abacaxi.png'
  ));
  myBox.put('fruit4', Plants(
    tipe: 'fruit',
    name: 'Abacate',
    description: '',
    harvest: '+1095 dias',
    developmentEta: '+21 dias',
    idealTemperature: '18ºC e 25ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez ao dia; já nas temperaturas mais quentes, regue 2 vezes ao dia.\nSe as folhas estiverem amareladas diminua a quantidade de água, mas se estiverem amarronzadas, aumente a quantidade de água.\nSempre diminua as regas durante o inverno, para que não fique encharcada.',
    sunlight: '6h diárias',
    observations: '',
    planting: '- Adquira um fruto e retire o caroço de dentro, limpando-o com cuidado e sem retirar a pele marrom que o cobre;\n- Deixe a ponta estreita do caroço para cima e espete-o no meio, em 4 pontos com distâncias iguais e a profundidade sendo de, aproximadamente, 5mm;\n- Em um recipiente de vidro estreito, coloque água e por cima coloque o caroço\n- Os palitos ficarão apoiados no recipiente de modo que só a metade de baixo do caroço fique submersa em água, deixando o recipiente em local com temperatura amena e com luz solar direta até germinar, trocando sua água a cada dois dias.',
    replanting: 'Somente quando tiver algumas folhas e a raiz estiver um pouco maior, retire os palitos e plante no local definitivo',
    imgUrl: 'assets/images/fruits/Abacate.png'
  ));
  myBox.put('fruit5', Plants(
    tipe: 'fruit',
    name: 'Laranja',
    description: '',
    harvest: '+304 dias',
    developmentEta: '+15 dias',
    idealTemperature: '23ºC e 32ºC',
    irrigation: 'Em temperaturas amenas regue 2 vezes por semana.',
    sunlight: '6h diárias',
    observations: 'Esta fruta pode não ter frutos caso seja plantada por sementes!',
    planting: '- Faça um buraco no meio da terra para inserir a muda e meça a altura do recipiente para cortar o fundo da muda na mesma proporção;\n- Corte o plástico que envolve a raiz da muda e coloque-a no vaso e, se a raiz continuar muito alta, repita o processo de corte e depois cubra a raiz com terra pressionando para dar firmeza;\n- Adicione um suporte da altura do vaso até o topo da planta.',
    replanting: 'Assim que a muda estiver em suas mãos, faça o replantio para o local definitivo.',
    imgUrl: 'assets/images/fruits/Laranja.png'
  ));
  myBox.put('fruit6', Plants(
    tipe: 'fruit',
    name: 'Limão',
    description: '',
    harvest: '1095 dias',
    developmentEta: '25 dias',
    idealTemperature: '23ºC e 32ºC',
    irrigation: 'Em temperaturas amenas regue 3 vezes por semana; já em temperaturas mais quentes regue 1 vez por dia.',
    sunlight: '6h diárias',
    observations: 'Esta fruta pode não ter frutos caso seja plantada por sementes! Se ainda assim for usá-las, procure por limões orgânicos.',
    planting: '- Abra pequenos buracos de 5cm de profundidade e 2cm de diâmetro;\n- Coloque a semente em um algodão molhado por 5 segundos e depois coloque-a no buraco, cobrindo com terra e molhe até que fique completamente úmido;\n- Cubra cada recipiente com filme plástico furado com palito de dente e deixe-o em um local que pegue sol durante a metade do dia.',
    replanting: 'Quando a muda começar a mostrar suas raízes pelos furinhos debaixo do recipiente.',
    imgUrl: 'assets/images/fruits/limão.jpg'
  ));
  //VERDURAS
  myBox.put('greens1', Plants(
    tipe: 'greens',
    name: 'Alface',
    description: '',
    harvest: '+75 dias',
    developmentEta: '+4 dias',
    idealTemperature: '18ºC e 22ºC',
    irrigation: 'Em temperaturas amenas regue 4 vezes por semana',
    sunlight: '8h diárias',
    observations: '',
    planting: '- Coloque a semente no recipiente de 0.20 a 0.30m de profundidade e cubra com terra;\n- Arranque pela raiz toda e qualquer erva daninha que nascer próxima a muda.',
    replanting: 'Quando estiver com 4 a 6 folhas verdadeiras, deixando o colo acima do nível do solo e dando espaço de 30cm entre cada uma. Faça o replantio em dias mais frescos, à tarde ou em dias nublados.',
    imgUrl: 'assets/images/greens/alface.jpg'
  ));
  myBox.put('greens2', Plants(
    tipe: 'greens',
    name: 'Couve',
    description: '',
    harvest: '+70 dias',
    developmentEta: '+7 dias',
    idealTemperature: '16ºC e 22ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez por dia.',
    sunlight: '6h diárias',
    observations: '',
    planting: '- Coloque as sementes a aproximadamente 1cm de profundidade e cubra com terra;\n- Retire quaisquer ervas invasoras.',
    replanting: 'Quando estiver com 4 a 6 folhas verdadeiras e estiver com pelo menos 10cm de altura. Prefira fazer em dias nublados e chuvosos, ou no fim da tarde regando logo em seguida.',
    imgUrl: 'assets/images/greens/couve.png'
  ));
  myBox.put('greens3', Plants(
    tipe: 'greens',
    name: 'Agrião',
    description: '',
    harvest: '+60 dias',
    developmentEta: '7 dias',
    idealTemperature: '10ºC e 20ºC',
    irrigation: 'A terra deve ser mantida SEMPRE úmida, mas nunca encharcada',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Coloque a semente sobre a terra e pressione levemente para afundá-las.',
    replanting: 'Quando estiver com 4 a 6 folhas verdadeiras.',
    imgUrl: 'assets/images/greens/agrião.png'
  ));
  myBox.put('greens4', Plants(
    tipe: 'greens',
    name: 'Espinafre',
    description: '',
    harvest: '+40 dias',
    developmentEta: '+7 dias',
    idealTemperature: '13ºC e 20ºC',
    irrigation: 'A terra deve ser mantida úmida, mas nunca encharcada.',
    sunlight: '4 horas diárias',
    observations: '',
    planting: '- Coloque as sementes até 1cm de profundidade no solo;\n- Retire as plantas invasoras.',
    replanting: 'Quando a muda estiver com 4 folhas verdadeiras.',
    imgUrl: 'assets/images/greens/Espinafre.png'
  ));
  myBox.put('greens5', Plants(
    tipe: 'greens',
    name: 'Rúcula',
    description: '',
    harvest: '+20 dias',
    developmentEta: '+4 dias',
    idealTemperature: '16ºC e 22ºC',
    irrigation: 'Em temperaturas amenas regue 2 vezes no dia.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Coloque as sementes diretamente no local definitivo, superficialmente ou a uma profundidade não superior a 0.5cm no solo;\n- Retire as plantas invasoras',
    replanting: 'Não é necessário fazer o replantio.',
    imgUrl: 'assets/images/greens/Rúcula.png'
  ));
  myBox.put('vegetable1', Plants(
    tipe: 'vegetable',
    name: 'Vagem',
    description: '',
    harvest: '70 dias',
    developmentEta: '+5 dias',
    idealTemperature: '20ºC e 25ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez ao dia.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Coloque 3 ou 4 sementes nas covas com profundidade de 2.5cm, cubra com terra peneirada e regue;\n- Quando as plantas estiverem com 3 ou 4 folhas, deve-se retirar as plantas em excesso, deixando apenas as duas mais fortes e saudáveis;\n- O solo necessita ser capinado com frequência.',
    replanting: 'Não é necessário.',
    imgUrl: 'assets/images/vegetables/vagem.jpg'
  ));
  myBox.put('vegetable2', Plants(
    tipe: 'vegetable',
    name: 'Cenoura',
    description: '',
    harvest: '+60 dias',
    developmentEta: '+7 dias',
    idealTemperature: '16ºC e 22ºC',
    irrigation: 'Em temperaturas amenas, regue 1 vez ao dia.',
    sunlight: '6h diárias',
    observations: '',
    planting: '- Coloque a semente em um buraco de 0.5 a 1cm;\n- Retire as plantas invasoras.',
    replanting: 'Não é necessário',
    imgUrl: 'assets/images/vegetables/Cenoura.png'
  ));
  myBox.put('vegetable3', Plants(
    tipe: 'vegetable',
    name: 'Pimentão',
    description: '',
    harvest: '+84 dias',
    developmentEta: '+7 dias',
    idealTemperature: '18ºC e 30ºC',
    irrigation: 'Em temperaturas amenas, regue 1 vez ao dia',
    sunlight: '6h diárias',
    observations: '',
    planting: '- Coloque as sementes a 0.5cm de profundidade no solo;\n- Retire plantas invasoras;\n- Use estacas (ou cercas de arame) com pelo menos 1m de altura e amarre cuidadosamente a planta à estaca, conforme a planta for crescendo.',
    replanting: 'Quando a muda atingir aproximadamente 10cm de altura.',
    imgUrl: 'assets/images/vegetables/Pimentão.png'
  ));
  myBox.put('vegetable4', Plants(
    tipe: 'vegetable',
    name: 'Mini Abóbora',
    description: '',
    harvest: '+80 dias',
    developmentEta: '+4 dias',
    idealTemperature: '18ºC e 30ºC',
    irrigation: 'A frequência de rega pode variar de acordo com clima e drenagem do recipiente, mas pode ser feita no início ou final do dia.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- 10 minutos antes de colocar as sementes, encharque a terra e esprema com as mãos para retirar o excesso de água e deixá-lo apenas úmido;\n- Coloque 2 a 3 sementes em uma profundidade de 1 a 2cm e cubra com terra.',
    replanting: 'Quando surgir o segundo par de folhas.',
    imgUrl: 'assets/images/vegetables/mini-abobora.jpg'
  ));
  //PANCS
  myBox.put('PANC1', Plants(
    tipe: 'PANC',
    name: 'Azedinha',
    description: 'Suas folhas podem ser usadas em vinagretes, para temperar saladas de folhas, molhos, purês, massas de panquecas, sopas, cozidas como espinafre e como acompanhamento de peixes.',
    harvest: '60 dias',
    developmentEta: '+15 dias',
    idealTemperature: '5ºC e 30ºC',
    irrigation: 'Em temperaturas amenas regue sempre que a terra estiver seca, evitando que a mesma fique encharcada.',
    sunlight: '4h diárias',
    observations: 'Contraindicações: pessoas que tenham artrite, reumatismo e cálculos. Não se deve usar suas folhas frescas em grande quantidade devido ao risco de intoxicação.',
    planting: '- Coloque a semente a 1cm de profundidade e cubra com terra;\n- Retire as plantas invasoras.',
    replanting: 'Quando estiver com 4 a 6 folhas.',
    imgUrl: 'assets/images/PANCs/Azedinha.png'
  ));
  myBox.put('PANC2', Plants(
    tipe: 'PANC',
    name: 'Beldroega',
    description: 'Utilizada em sopas, refogados e saladas.',
    harvest: '+60 dias',
    developmentEta: '8 dias',
    idealTemperature: '15ºC e 35ºC',
    irrigation: 'Em temperaturas amenas regue 1 ou 2 vezes por semana, sendo a rega aumentada em climas mais quentes e diminuída durante os climas mais frios.',
    sunlight: '4h diárias',
    observations: 'Contraindicações: pessoas que tem ou já tiveram cálculos renais, consumo excessivo pode causar problemas intestinais, como dor e tontura.',
    planting: '- Coloque a semente sobre a terra e a cubra apenas com uma leve camada de terra peneirada ou de serragem fina;\n- Retire as plantas invasoras.',
    replanting: 'Quando estiver com 4 a 6 folhas verdadeiras.',
    imgUrl: 'assets/images/PANCs/Beldroega.png'
  ));
  myBox.put('PANC3', Plants(
    tipe: 'PANC',
    name: 'Capuchinha',
    description: 'Pode ser utilizada em saladas. As folhas podem ser adicionadas ao vinagre, fazendo um vinagre aromatizado. Flores e folhas podem ser adicionadas a sucos com outras hortaliças. Também pode ser consumida como chá (infusão).',
    harvest: '+50 dias',
    developmentEta: '+7 dias',
    idealTemperature: 'Esta planta é resistente e pode ser cultivada em várias condições climáticas, porém não suporta temperaturas muito baixas ou geadas.',
    irrigation: 'Tente não regar todos os dias, desde que o solo esteja úmido, a capuchinha vai se desenvolver corretamente.',
    sunlight: '4h diárias',
    observations: 'Contraindicações: pessoas com gastrite, hipotireoidismo, insuficiência cardíaca ou renal, mulheres grávidas ou em fase de lactação.',
    planting: '- Coloque a semente em uma profundidade de aproximadamente 1cm;\n- Uma opção é colocar estacas ou trliças para que a planta possa crescer verticalmente. Sem estacas ou outros suportes, se espalharão lateralmente sobre o solo.',
    replanting: 'Quando estiver com 4 a 6 folhas verdadeiras.',
    imgUrl: 'assets/images/PANCs/Capuchinha.png'
  ));
  myBox.put('PANC4', Plants(
    tipe: 'PANC',
    name: 'Hibisco',
    description: 'As folhas são usadas em saladas. Já o cálice, na produção de geleias, doces, picles, vinhos, vinagre e sucos. O chá é produzido a partir dos cálices da flor, secos à sombra, permitindo aproveitar melhor as propriedades.',
    harvest: '+60 dias',
    developmentEta: '+7 dias',
    idealTemperature: '7ºC a 12ºC',
    irrigation: 'Em temperaturas amenas, regue 2 vezes por semana pela manhã ou final da tarde.',
    sunlight: '2h diárias',
    observations: 'Contraindicações: consumo em alta quantidade pode causar intoxicação, eliminação excessida de eletrólitos (sódio e potássio). Consulte seu médico ou nutricionista antes de começar a consumir.',
    planting: '- Coloque a semente a uma profundidade de 0.5cm no solo e cubra com terra.',
    replanting: 'Quando estiver com 4 a 6 folhas verdadeiras',
    imgUrl: 'assets/images/PANCs/hibisco.jpg'
  ));
  myBox.put('PANC5', Plants(
    tipe: 'PANC',
    name: 'Peixinho',
    description: 'consumido frito, empanado ou à milanesa.',
    harvest: '60 dias',
    developmentEta: '+28 dias',
    idealTemperature: '20ºC',
    irrigation: 'Deve ser irrigada em dias alternados, mas nunca a deixe encharcada.',
    sunlight: 'Indefinido',
    observations: 'Não há contraindicações',
    planting: '- Coloque a semente sob a terra e a cubra;\n- Retire as plantas invasoras.',
    replanting: 'Quando os ramos estiverem saindo pra fora do vaso.',
    imgUrl: 'assets/images/PANCs/Peixinho-da-horta.png'
  ));
  //TEMPEROS
  myBox.put('herb1', Plants(
    tipe: 'herbs',
    name: 'Hortelã',
    description: '',
    harvest: '40 dias',
    developmentEta: '+20 dias',
    idealTemperature: '10ºC e 25ºC',
    irrigation: 'Em temperaturas amenas regue 2 vezes ao dia, principalmente na parte da manhã ou fim da tarde, aumente a frequência conforme o clima e o quão rápido sua terra seca.',
    sunlight: '6h diárias',
    observations: '',
    planting: '- Coloque as sementes sobre a terra e a cubra com uma camada fina;\n- Pode ser feito diretamente no local definitivo.',
    replanting: 'Não é necessário.',
    imgUrl: 'assets/images/herbs/hortelã.png'
  ));
  myBox.put('herb2', Plants(
    tipe: 'herbs',
    name: 'Erva doce',
    description: '',
    harvest: '+65 dias',
    developmentEta: '+7 dias',
    idealTemperature: '20ºC e 30ºC',
    irrigation: 'Em temperaturas amenas regue 2 vezes por semana, principalmente na parte da manhã ou fim da tarde.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Coloque as sementes sobre a terra e a cubra com uma camada fina;\n- Deve ser plantada distante de outras plantas.',
    replanting: 'É recomendado que não seja feito.',
    imgUrl: 'assets/images/herbs/erva-doce.png'
  ));
  myBox.put('herb3', Plants(
    tipe: 'herbs',
    name: 'Camomila',
    description: '',
    harvest: '+90 dias',
    developmentEta: '+7 dias',
    idealTemperature: '7ºC e 26ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez por semana.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Coloque a semente a uma profundidade de 0.5cm, ou pressione levemente as sementes no solo;\n- Retire plantas invasoras, principalmente no início do cultivo.',
    replanting: 'Quando estiver com 2.5 a 5cm de altura.',
    imgUrl: 'assets/images/herbs/camomila.jpg'
  ));
  myBox.put('herb4', Plants(
    tipe: 'herbs',
    name: 'Tomilho',
    description: '',
    harvest: '+60 dias',
    developmentEta: '+7 dias',
    idealTemperature: '4ºC e 28ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez por dia.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- As sementes podem ser colocadas diretamente no local definitivo, mas por serem muito pequenas o melhor é colocar em um recipiente temporário e depois fazer o replantio.',
    replanting: 'Quando estiver com 4 pares de folhas definitivas',
    imgUrl: 'assets/images/herbs/tomilho.jpg'
  ));
  myBox.put('herb5', Plants(
    tipe: 'herbs',
    name: 'Coentro',
    description: '',
    harvest: '+35 dias',
    developmentEta: '+7 dias',
    idealTemperature: '20ºC e 30ºC',
    irrigation: 'Em temperaturas amenas regue 1 vez por semana.',
    sunlight: '4h diárias',
    observations: '',
    planting: '- Plante as sementes em sol direto, cobrindo-as com uma camada fina de terra.',
    replanting: 'Não é necessário.',
    imgUrl: 'assets/images/herbs/Coentro.png'
  ));
}