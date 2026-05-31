import 'package:flutter/material.dart';
import 'package:newprojekt/models/category.dart';
import 'package:newprojekt/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Schweizer Klassiker',
    color: Colors.red,
  ),
  Category(
    id: 'c2',
    title: 'Schnell & Einfach',
    color: Colors.orange,
  ),
  Category(
    id: 'c3',
    title: 'Käsegerichte',
    color: Colors.amber,
  ),
  Category(
    id: 'c4',
    title: 'Berner Küche',
    color: Colors.brown,
  ),
  Category(
    id: 'c5',
    title: 'Leicht & Frisch',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c6',
    title: 'Desserts',
    color: Colors.pink,
  ),
  Category(
    id: 'c7',
    title: 'Frühstück',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Alpen Spezialitäten',
    color: Colors.deepPurple,
  ),
  Category(
    id: 'c9',
    title: 'Traditionell',
    color: Colors.teal,
  ),
  Category(
    id: 'c10',
    title: 'Sommergerichte',
    color: Colors.green,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c3'],
    title: 'Käsefondue',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1547592180-85f173990554?q=80&w=1200',
    duration: 30,
    ingredients: [
      '400g Gruyère',
      '400g Emmentaler',
      '300ml Weisswein',
      '1 Knoblauchzehe',
      '1 TL Maizena',
      'Brotwürfel',
      'Pfeffer'
    ],
    steps: [
      'Caquelon mit Knoblauch einreiben.',
      'Weisswein erhitzen.',
      'Käse langsam unter Rühren hinzufügen.',
      'Maizena dazugeben und cremig rühren.',
      'Mit Pfeffer würzen.',
      'Mit Brotwürfeln servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm2',
    categories: ['c1', 'c2'],
    title: 'Rösti',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1515003197210-e0cd71810b5f?q=80&w=1200',
    duration: 25,
    ingredients: ['800g Kartoffeln', '2 EL Butter', 'Salz', 'Pfeffer'],
    steps: [
      'Kartoffeln vorkochen und schälen.',
      'Kartoffeln grob reiben.',
      'Butter in einer Pfanne erhitzen.',
      'Kartoffeln goldbraun anbraten.',
      'Wenden und knusprig fertig braten.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c4', 'c9'],
    title: 'Berner Platte',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 90,
    ingredients: [
      'Speck',
      'Schinken',
      'Würste',
      'Sauerkraut',
      'Kartoffeln',
      'Bohnen'
    ],
    steps: [
      'Fleisch langsam kochen.',
      'Kartoffeln separat garen.',
      'Sauerkraut erwärmen.',
      'Alles gemeinsam anrichten.',
      'Heiss servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c3', 'c8'],
    title: 'Raclette',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1528605248644-14dd04022da1?q=80&w=1200',
    duration: 40,
    ingredients: [
      'Raclettekäse',
      'Kartoffeln',
      'Essiggurken',
      'Silberzwiebeln',
      'Paprika'
    ],
    steps: [
      'Kartoffeln kochen.',
      'Raclettekäse schmelzen.',
      'Beilagen vorbereiten.',
      'Käse über Kartoffeln geben.',
      'Mit Gurken servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c5', 'c10'],
    title: 'Birchermüesli',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=1200',
    duration: 10,
    ingredients: [
      'Haferflocken',
      'Joghurt',
      'Milch',
      'Äpfel',
      'Honig',
      'Nüsse'
    ],
    steps: [
      'Haferflocken mit Milch mischen.',
      'Joghurt hinzufügen.',
      'Äpfel raspeln.',
      'Alles vermengen.',
      'Mit Nüssen garnieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm6',
    categories: ['c6'],
    title: 'Schweizer Schokoladenmousse',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 120,
    ingredients: [
      '200g Schweizer Schokolade',
      '3 Eier',
      '200ml Rahm',
      '2 EL Zucker'
    ],
    steps: [
      'Schokolade schmelzen.',
      'Eier trennen.',
      'Eiweiss steif schlagen.',
      'Rahm schlagen.',
      'Alles vorsichtig mischen.',
      '2 Stunden kaltstellen.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7'],
    title: 'Zopf',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1509440159596-0249088772ff?q=80&w=1200',
    duration: 180,
    ingredients: [
      '500g Mehl',
      '1 Würfel Hefe',
      '250ml Milch',
      '60g Butter',
      '1 Ei',
      'Salz'
    ],
    steps: [
      'Teig vorbereiten.',
      '1 Stunde ruhen lassen.',
      'Zopf flechten.',
      'Mit Ei bestreichen.',
      'Bei 200°C backen.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: ['c8'],
    title: 'Älplermagronen',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1621996346565-e3dbc646d9a9?q=80&w=1200',
    duration: 35,
    ingredients: [
      'Magronen',
      'Kartoffeln',
      'Rahm',
      'Käse',
      'Zwiebeln',
      'Apfelmus'
    ],
    steps: [
      'Kartoffeln und Magronen kochen.',
      'Rahm und Käse hinzufügen.',
      'Zwiebeln rösten.',
      'Alles vermengen.',
      'Mit Apfelmus servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm9',
    categories: ['c9'],
    title: 'Basler Läckerli',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://images.unsplash.com/photo-1519869325930-281384150729?q=80&w=1200',
    duration: 60,
    ingredients: [
      'Mehl',
      'Honig',
      'Mandeln',
      'Orangeat',
      'Zitronat',
      'Gewürze'
    ],
    steps: [
      'Honig erwärmen.',
      'Zutaten zu Teig mischen.',
      'Teig ausrollen.',
      'Backen bis goldbraun.',
      'In Rechtecke schneiden.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm10',
    categories: ['c5', 'c10'],
    title: 'Wurst-Käse-Salat',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=1200',
    duration: 15,
    ingredients: ['Cervelat', 'Emmentaler', 'Zwiebeln', 'Essig', 'Öl', 'Salat'],
    steps: [
      'Wurst und Käse schneiden.',
      'Zwiebeln fein schneiden.',
      'Dressing vorbereiten.',
      'Alles vermengen.',
      'Frisch servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: ['c8', 'c9'],
    title: 'Capuns',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 90,
    ingredients: [
      'Mangoldblätter',
      'Bündnerfleisch',
      'Mehl',
      'Milch',
      'Eier',
      'Kräuter'
    ],
    steps: [
      'Mangoldblätter blanchieren.',
      'Füllung aus Fleisch, Mehl, Milch und Kräutern mischen.',
      'Die Masse in die Blätter einrollen.',
      'In Brühe sanft köcheln lassen.',
      'Warm servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: ['c9'],
    title: 'Bündner Gerstensuppe',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1467003909585-2f8a72700288?q=80&w=1200',
    duration: 120,
    ingredients: [
      'Gerste',
      'Rindfleisch',
      'Karotten',
      'Sellerie',
      'Lauch',
      'Zwiebeln'
    ],
    steps: [
      'Rindfleisch anbraten.',
      'Gemüse hinzufügen und kurz anschwitzen.',
      'Gerste zugeben und mit Brühe aufgiessen.',
      '2 Stunden langsam köcheln lassen.',
      'Mit Petersilie garnieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: ['c1', 'c2'],
    title: 'St. Galler Bratwurst',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 25,
    ingredients: [
      'St. Galler Bratwurst',
      'Butter',
      'Kartoffeln',
      'Salat',
      'Senf'
    ],
    steps: [
      'Bratwürste in Butter anbraten.',
      'Kartoffeln kochen oder braten.',
      'Salat zubereiten.',
      'Würste mit Senf servieren.',
      'Mit Kartoffeln und Salat kombinieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: ['c4', 'c9'],
    title: 'Luzerner Chügelipastete',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1542838132-92c53300491e?q=80&w=1200',
    duration: 120,
    ingredients: [
      'Blätterteig',
      'Kalbfleisch',
      'Pilze',
      'Zwiebeln',
      'Rahm',
      'Weisswein'
    ],
    steps: [
      'Fleisch in Würfel schneiden und anbraten.',
      'Zwiebeln und Pilze dazugeben.',
      'Mit Weisswein ablöschen und Rahm zugeben.',
      'Mischung in Blätterteig füllen.',
      'Im Ofen goldbraun backen.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm15',
    categories: ['c1', 'c8'],
    title: 'Zürcher Geschnetzeltes',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 35,
    ingredients: [
      'Kalbfleisch',
      'Zwiebeln',
      'Champignons',
      'Rahm',
      'Weisswein',
      'Senf'
    ],
    steps: [
      'Kalbfleisch in dünne Streifen schneiden.',
      'Fleisch kurz anbraten.',
      'Zwiebeln und Champignons ergänzen.',
      'Mit Weisswein und Rahm ablöschen.',
      'Mit Senf abschmecken und servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm16',
    categories: ['c7', 'c6'],
    title: 'Gugelhopf',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 90,
    ingredients: ['Mehl', 'Hefe', 'Milch', 'Butter', 'Eier', 'Rosinen'],
    steps: [
      'Teig mit Hefe ansetzen.',
      'Butter, Zucker und Eier einarbeiten.',
      'Rosinen unterheben.',
      'In Gugelhopf-Form füllen.',
      'Bei 180°C goldbraun backen.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm17',
    categories: ['c6'],
    title: 'Rüeblitorte',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1499636136210-6f4ee915583e?q=80&w=1200',
    duration: 70,
    ingredients: ['Karotten', 'Mehl', 'Mandeln', 'Zucker', 'Eier', 'Öl'],
    steps: [
      'Karotten fein raspeln.',
      'Eier und Zucker schaumig schlagen.',
      'Mandeln und Mehl unterheben.',
      'Teig in Form geben.',
      'Backen und abkühlen lassen.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm18',
    categories: ['c6', 'c7'],
    title: 'Vermicelles',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 30,
    ingredients: [
      'Marroni',
      'Zucker',
      'Rahm',
      'Vanille',
      'Butter',
      'Schokolade'
    ],
    steps: [
      'Marroni kochen und pürieren.',
      'Zucker und Vanille dazugeben.',
      'Mit Sahne verrühren.',
      'Durch eine Presse drücken.',
      'Mit Schokolade garnieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm19',
    categories: ['c6'],
    title: 'Zuger Kirschtorte',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 120,
    ingredients: [
      'Biskuit',
      'Sahne',
      'Mandelcreme',
      'Kirschwasser',
      'Biskuitbrösel'
    ],
    steps: [
      'Biskuit backen.',
      'Sahne mit Mandeln und Kirschwasser mischen.',
      'Schichten aus Biskuit und Creme formen.',
      'Mit Biskuitbröseln bestreuen.',
      'Kaltstellen und servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm20',
    categories: ['c6'],
    title: 'Luxemburgerli',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=1200',
    duration: 90,
    ingredients: [
      'Eiweiss',
      'Mandelmehl',
      'Puderzucker',
      'Buttercreme',
      'Lebensmittelfarbe'
    ],
    steps: [
      'Eiweiss steif schlagen.',
      'Mandelmehl und Zucker unterheben.',
      'Kleine Häufchen spritzen.',
      'Biscuit trocknen lassen und backen.',
      'Mit Buttercreme füllen.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm21',
    categories: ['c6', 'c7'],
    title: 'Nidelkuchen',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1525351484163-7529414344d8?q=80&w=1200',
    duration: 90,
    ingredients: ['Mehl', 'Hefe', 'Milch', 'Butter', 'Zucker', 'Sahne'],
    steps: [
      'Hefeteig ansetzen.',
      'Teig gehen lassen.',
      'In Form geben.',
      'Mit Zucker bestreuen.',
      'Backen bis goldbraun.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm22',
    categories: ['c3', 'c8'],
    title: 'Malakoff',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 40,
    ingredients: ['Baguette', 'Käse', 'Mehl', 'Eier', 'Paniermehl', 'Öl'],
    steps: [
      'Brot mit Käse füllen.',
      'Mit Mehl, Ei und Brösel panieren.',
      'Im Fett goldbraun frittieren.',
      'Abtropfen lassen.',
      'Heiss servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm23',
    categories: ['c9'],
    title: 'Basler Mehlsuppe',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1496317899792-9d7dbcd928a1?q=80&w=1200',
    duration: 45,
    ingredients: [
      'Mehl',
      'Butter',
      'Rindfleischbrühe',
      'Zwiebeln',
      'Geriebener Käse'
    ],
    steps: [
      'Mehl in Butter rösten.',
      'Brühe langsam einrühren.',
      'Zwiebeln hinzufügen.',
      'Aufkochen lassen.',
      'Mit Käse servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm24',
    categories: ['c6', 'c9'],
    title: 'Appenzeller Schlorzifladen',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 70,
    ingredients: ['Mehl', 'Hefeteig', 'Rahm', 'Zucker', 'Rosinen', 'Mandeln'],
    steps: [
      'Hefeteig ausrollen.',
      'Rahm, Zucker und Rosinen vermischen.',
      'Masse auf den Teig geben.',
      'Im Ofen backen.',
      'In Stücke schneiden.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm25',
    categories: ['c6'],
    title: 'Bündner Nusstorte',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1529042410759-befb1204b468?q=80&w=1200',
    duration: 80,
    ingredients: ['Mehl', 'Butter', 'Zucker', 'Eier', 'Nüsse', 'Rahm'],
    steps: [
      'Teig herstellen und in Form drücken.',
      'Nussfüllung kochen.',
      'Füllung in Teig geben.',
      'Backen lassen.',
      'Abkühlen und servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm26',
    categories: ['c6'],
    title: 'Bündner Birnenbrot',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 60,
    ingredients: [
      'Getrocknete Birnen',
      'Mehl',
      'Zucker',
      'Nüsse',
      'Gewürze',
      'Butter'
    ],
    steps: [
      'Birnen und Nüsse hacken.',
      'Mit Mehl und Gewürzen mischen.',
      'In eine Kastenform füllen.',
      'Backen und abkühlen lassen.',
      'In Scheiben servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm27',
    categories: ['c10', 'c5'],
    title: 'Saucisson Vaudois mit Linsen',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 50,
    ingredients: [
      'Saucisson Vaudois',
      'Linsen',
      'Zwiebeln',
      'Karotten',
      'Lorbeerblatt'
    ],
    steps: [
      'Linsen mit Gemüse kochen.',
      'Wurst leicht einschneiden und mitkochen.',
      'Alles zusammen leicht köcheln lassen.',
      'Mit Salz und Pfeffer abschmecken.',
      'Warm servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm28',
    categories: ['c8', 'c9'],
    title: 'Pizokel',
    affordability: Affordability.affordable,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 45,
    ingredients: ['Mehl', 'Eier', 'Kartoffeln', 'Butter', 'Käse', 'Salz'],
    steps: [
      'Teig aus Mehl, Eiern und Kartoffeln kneten.',
      'Streifen schneiden und kochen.',
      'Mit Butter schwenken.',
      'Mit Käse bestreuen.',
      'Sofort servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm29',
    categories: ['c2', 'c1'],
    title: 'Cordon Bleu',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=1200',
    duration: 40,
    ingredients: [
      'Kalbsschnitzel',
      'Schinken',
      'Käse',
      'Ei',
      'Paniermehl',
      'Öl'
    ],
    steps: [
      'Schnitzel füllen mit Schinken und Käse.',
      'In Ei und Paniermehl wenden.',
      'In Butter goldbraun braten.',
      'Kurz ruhen lassen.',
      'Mit Beilage anrichten.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm30',
    categories: ['c5', 'c9'],
    title: 'Apfelwähe',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 50,
    ingredients: ['Mürbeteig', 'Äpfel', 'Zucker', 'Eier', 'Rahm', 'Zimt'],
    steps: [
      'Teig in Form geben.',
      'Apfelscheiben darauf schichten.',
      'Eier, Rahm und Zucker mischen.',
      'Mischung über Äpfel gießen.',
      'Backen bis goldbraun.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm31',
    categories: ['c10', 'c5'],
    title: 'Polenta mit Pilzragout',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1498654896293-37aacf113fd9?q=80&w=1200',
    duration: 35,
    ingredients: [
      'Polenta',
      'Gemüsebrühe',
      'Pilze',
      'Zwiebeln',
      'Rahm',
      'Petersilie'
    ],
    steps: [
      'Polenta in Brühe aufkochen.',
      'Pilze und Zwiebeln anbraten.',
      'Mit Rahm ablöschen.',
      'Polenta auf Teller geben.',
      'Pilzragout darauf verteilen.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm32',
    categories: ['c9', 'c4'],
    title: 'Bündnerfleisch mit Melone',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 15,
    ingredients: ['Bündnerfleisch', 'Melone', 'Senf', 'Brot', 'Rucola'],
    steps: [
      'Bündnerfleisch dünn aufschneiden.',
      'Melone in Stücke schneiden.',
      'Alles schön anrichten.',
      'Mit Senf servieren.',
      'Optional mit Rucola garnieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm33',
    categories: ['c5', 'c10'],
    title: 'Nüsslisalat',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1551218808-94e220e084d2?q=80&w=1200',
    duration: 10,
    ingredients: ['Nüsslisalat', 'Ei', 'Speck', 'Zwiebeln', 'Essig', 'Öl'],
    steps: [
      'Salat waschen.',
      'Ei kochen und schneiden.',
      'Speck knusprig braten.',
      'Dressing anrühren.',
      'Alles vermengen.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm34',
    categories: ['c1', 'c2'],
    title: 'Hörnli mit Ghackets',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=1200',
    duration: 35,
    ingredients: [
      'Hörnli',
      'Hackfleisch',
      'Tomatenmark',
      'Zwiebeln',
      'Bouillon',
      'Pfeffer'
    ],
    steps: [
      'Hörnli kochen.',
      'Hackfleisch mit Zwiebeln anbraten.',
      'Tomatenmark und Bouillon hinzugeben.',
      'Einkochen lassen.',
      'Mit Hörnli servieren.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm35',
    categories: ['c10', 'c9'],
    title: 'Bündner Röteli',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1514996937319-344454492b37?q=80&w=1200',
    duration: 30,
    ingredients: ['Kirschwasser', 'Zucker', 'Wasser', 'Orangenschale', 'Zimt'],
    steps: [
      'Zucker mit Wasser aufkochen.',
      'Kirschwasser zugeben.',
      'Mit Gewürzen abschmecken.',
      'Abkühlen lassen.',
      'Als Dessertlikör servieren.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm36',
    categories: ['c6'],
    title: 'Zuger Röteli Forelle',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1432139509613-5c4255815697?q=80&w=1200',
    duration: 60,
    ingredients: [
      'Zuger Röteli',
      'Forellenfilets',
      'Sahne',
      'Butter',
      'Zitronensaft'
    ],
    steps: [
      'Forelle leicht anbraten.',
      'Röteli erhitzen.',
      'Mit Sahne und Butter aufmixen.',
      'Soße über Fisch geben.',
      'Mit Zitrone servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm37',
    categories: ['c1', 'c8'],
    title: 'Schwyzer Chüechli',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1506354666786-959d6d497f1a?q=80&w=1200',
    duration: 50,
    ingredients: ['Mehl', 'Butter', 'Rahm', 'Zucker', 'Nüsse', 'Kirschen'],
    steps: [
      'Teig herstellen.',
      'In Formen füllen.',
      'Mit Nuss-Zucker-Mischung belegen.',
      'Backen bis goldbraun.',
      'Abkühlen lassen.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm38',
    categories: ['c10', 'c5'],
    title: 'Eierschwämmli in Rahm',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=1200',
    duration: 25,
    ingredients: [
      'Eierschwämmli',
      'Zwiebeln',
      'Rahm',
      'Petersilie',
      'Butter',
      'Salz'
    ],
    steps: [
      'Pilze säubern und schneiden.',
      'Zwiebeln in Butter anbraten.',
      'Pilze hinzufügen.',
      'Mit Rahm aufgiessen.',
      'Mit Petersilie servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm39',
    categories: ['c9', 'c4'],
    title: 'Kalbsbratwurst mit Senfsauce',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 30,
    ingredients: [
      'Kalbsbratwurst',
      'Zwiebeln',
      'Weisswein',
      'Sahne',
      'Senf',
      'Butter'
    ],
    steps: [
      'Bratwurst anbraten.',
      'Zwiebeln sautieren.',
      'Mit Wein ablöschen.',
      'Sahne und Senf einrühren.',
      'Wurst in Sauce servieren.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm40',
    categories: ['c8', 'c10'],
    title: 'Saffron-Risotto alla Ticinese',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200',
    duration: 40,
    ingredients: [
      'Arborio-Reis',
      'Safran',
      'Zwiebeln',
      'Weisswein',
      'Brühe',
      'Parmesan'
    ],
    steps: [
      'Zwiebeln glasig dünsten.',
      'Reis rösten.',
      'Mit Weisswein ablöschen.',
      'Nach und nach Brühe einrühren.',
      'Safran und Parmesan unterheben.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
];
