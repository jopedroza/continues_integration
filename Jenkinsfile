node("integration"){
   stage("Echo Hola Mundo") {
       echo "Hola mundo"
   }
   stage("Run show date") {
       echo "hola date"
   }
   stage("Run docker-compose") {
       checkout scm
       echo "run compose down"
       sh "docker-compose down --rmi=local"
       echo "run compose up"
       sh "docker-compose up -d"
   }
}
