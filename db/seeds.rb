
sections = Section.create([{title: 'Sección 1', body: 'Texto de prueba', picture_url: 'Imagen/de/prueba.jpg'},{title: 'Sección 2', body: 'Texto de prueba', picture_url: 'Imagen/de/prueba.jpg'},{title: 'Sección 3', body: 'Texto de prueba', picture_url: 'Imagen/de/prueba.jpg'}])
specifications = Specification.create([{prestacion: 'Ejemplo2', valor: 'Ejemplo1'},{prestacion: 'Ejemplo3', valor: 'Ejemplo2'},{prestacion: 'Ejemplo5', valor: 'Ejemplo4'}]);

review = Review.create({title: 'Review 1', sections: sections, specifications: specifications});

article = Article.create({title: 'New 1', description: 'ta pi cua', picture:'', category: 'Electrico', time: '10 minutos'});


 
