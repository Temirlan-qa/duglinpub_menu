import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF046936),
        title: const Text('Все правилы - Dublin Pub'),
      ),
      body: SingleChildScrollView(
        child: Container(
          
          color: const Color(0xFFE1DAD2),
          child: Container(
            decoration: const BoxDecoration(
              color:Color(0xFF046936),
              borderRadius: BorderRadius.only(
                topLeft:  Radius.circular(10),
                topRight:  Radius.circular(10),
                bottomLeft:  Radius.circular(10),
                bottomRight:  Radius.circular(10),
              ),
            ),
            // margin: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20,
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'В караоке    “Dublin Pub” дейтвуют следующие правила:\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
                const Text(''' 
  1.	 Гости несут полную материальную ответственность за повреждение имущества караоке “Dublin Pub” и обязываются возместить его стоимость в случае повреждения.\n
  2.	 Караоке кабинки за час – 2000тг (1 мин-60 мин). Если гости сидят в кабинках дольше 1 часа(60 мин) администратор вправе засчитывать ещё час за кабинку.\n       
  3.	 Администрация караоке имеет право отказать гостью в предоставлении услуг караоке без разьяснения причин.\n
  4.	 Гостям запрещено вести себя неприлично и мешать отдыху других гостей заведения. Штраф – 5000тг.\n
  5.	 Композиции исполняются в порядке очереди, по кругу, 2(две) композиции в свою очередь.\n
  6.	 Компании больше 8 (восьми) человек имеют право на исполнение 4 (четырех) композиции в очереди.\n
  7.	 Гости не имеют права передавать свою очередь исполнения композиции другому столу.\n
  Посещая наше заведение, гость тем самым соглашается с правилами посещения и обязуется их выполнять.
                ''',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  'Штрафы “Dublin Pub"\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  ),
                ),
                RichText(
                  text: const TextSpan(
                    text: ''' Dublin Pub Бой посуды и порча имущества: \n''',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      
                    ),
                    children: [
                      TextSpan(
                        text: 
                        '''
    Стакан – 1000тг
    Стакан (рюмка) – 500тг
    Тарелка – 2000тг
    Чайник (графин) – 3000тг
    Набор для специй – 2000тг 
    Тарелка для блюд – 5000-7000тг
    Колба для пива – 1000тг
    Кружки для пива – 1000тг
          
    Порча другого имущества оценивается на усмотрение администрации кафе “Dublin Pub” стоимостью от 5000тг до 1 000 000тг за единицу.
          
    Администрация кафе “Dublin Pub” за утерю личных вещей ответственности не несёт.
          
    Администрация кафе “Dublin Pub” вправе отказать в обслужании, за ненадлежащее грубое поведение со стороны гостья.
        
    Продукты питания и спиртные напитки приносить с собой и распивать,строго запрещено, штраф – 10000тг.
          
    Курение в помещении кафе, строго запрещается.
          
    В территории кафе действуют правила “Черного списка”.
                        ''',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
//                 const Text('''
// Dublin Pub Бой посуды и порча имущества:
//     Стакан – 1000тг
//     Стакан (рюмка) – 500тг
//     Тарелка – 2000тг
//     Чайник (графин) – 3000тг
//     Набор для специй – 2000тг 
//     Тарелка для блюд – 5000-7000тг
//     Колба для пива – 1000тг
//     Кружки пива – 1000тг
          
//     Порча другого имущества оценивается на усмотрение администрации кафе “Dublin Pub” стоимостью от 5000тг до 1 000 000тг за единицу.
          
//     Администрация кафе “Dublin Pub” за утерю личных вещей ответственности не несёт.
          
//     Администрация кафе “Dublin Pub” вправе отказать в обслужании, за ненадлежащее грубое поведение со стороны гостья.
        
//     Продукты питания и спиртные напитки приносить с собой и распивать,строго запрещено, штраф – 10000тг.
          
//     Курение в помещении кафе, строго запрещается.
          
//     В территории кафе действуют правила “Черного списка”.
//                 ''',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 14,
//                   ),
//                 ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}