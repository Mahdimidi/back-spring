pipeline {

 agent any
 tools {
        maven 'maven'
             stages {
                   stage ("Clean up"){
                                      steps {
                                                  deleteDir()
                                                }
                                      }
                    stage ("Clone repo"){
                                     steps {
                                             sh " git clone https://github.com/Mahdimidi/back-spring.git"
                                              }
                                            }
                    stage ("Generate back-spring image") {
                               
                                   steps {
                                      dir("back-spring"){
                                         sh "mvn clean install"
                                         sh "docker build -t back-spring."
                                           }
                                   }
                                 }
                      stage ("Run docker compose") {
                                      steps {
                                        dir("back-spring"){
                                                     sh" docker compose up -d"
                                        }
                                      }
                      }
                 }                         
   }
