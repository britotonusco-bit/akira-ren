WEB LIBRARY — AKIRA REN · V5

Esta versión convierte el perfil de Akira Ren en una ficha/bibliografía de personaje completa, con estética oscura y tecnológica.

INCLUYE:
- Imagen principal del personaje basada en la referencia proporcionada.
- Nivel, clase, edad, especie y alineación.
- Biografía editable.
- Estadísticas y atributos editables.
- Poderes, habilidades y características.
- Vida, historia y evolución.
- Equipo y recursos.
- Logros.
- Archivo infinito para crear nuevas secciones personalizadas.
- Galería propia del personaje.
- Agregar, editar, reemplazar y eliminar fotografías.
- Cambiar la imagen principal del personaje.
- Guardado local automático en el navegador.
- Exportación/importación de la biblioteca mediante JSON.

EDICIÓN:
1. Abre la zona de Akira Ren en la portada.
2. Pulsa “Editar ficha”.
3. Modifica cualquier apartado y pulsa “Guardar ficha completa”.
4. Para fotografías usa “＋ Foto”; cada foto tiene Editar y Eliminar.
5. Para ampliar la ficha usa “＋ Agregar nueva sección” dentro del editor.

VISUAL STUDIO CODE:
- Descomprime el ZIP.
- Abre la carpeta Web_Library_Akira_Ren_v5 en Visual Studio Code.
- Abre index.html.
- Guarda los cambios con Ctrl+S.


BASE DE DATOS COMPARTIDA — SUPABASE

Esta versión añade una base de datos compartida para que los enlaces, imágenes y la ficha de Akira Ren puedan aparecer al abrir la página desde otro equipo o al publicar/compartir la web.

PASOS:
1. Crea un proyecto en Supabase.
2. Abre SQL Editor y ejecuta completo el archivo supabase.sql.
3. En Project Settings > API copia la Project URL y la clave pública (anon/publishable key).
4. Abre supabase-config.js y reemplaza PEGA_AQUI_TU_SUPABASE_URL y PEGA_AQUI_TU_SUPABASE_ANON_KEY.
5. Publica toda esta carpeta en tu hosting/GitHub Pages/Netlify/Vercel.

IMPORTANTE:
- La base de datos conserva los enlaces externos como texto, aunque el sitio externo podría eliminar posteriormente su propio contenido.
- Las imágenes cargadas desde el computador se conservan dentro de los datos de la biblioteca, por lo que no dependen de una URL externa.
- También se mantiene localStorage como respaldo del navegador y funciona la exportación JSON.
- La política incluida en supabase.sql permite escritura pública para que la aplicación funcione sin iniciar sesión. Para una versión segura de producción, conviene proteger las operaciones de escritura con Supabase Auth.
