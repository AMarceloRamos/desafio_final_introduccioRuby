# Usa una imagen oficial de Ruby
FROM ruby:3.2

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo Gemfile y Gemfile.lock para instalar dependencias primero
COPY Gemfile Gemfile.lock ./

# Instala las dependencias del proyecto
RUN bundle install

# Copia todo el código del proyecto
COPY . .

# Expone el puerto 3000 (o el que uses en la app)
EXPOSE 3000

# Comando para iniciar la aplicación (Rails, Sinatra, etc.)
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]
