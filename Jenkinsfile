pipeline {
        agent any
    environment {
        
        dockerImage = ''
    }
    stages{
    
      stage('git checkout'){
      
       steps {
                 
                git branch: 'divyangjoshi-patch-1', credentialsId: 'gitaccid', url: 'https://github.com/BroadSparkDev/tsu-web-app.git'
               
            }
            
                
      }
    
    stage('Building our image') {
            steps {
                
                script {

                    
                    dockerImage = docker.build("angular-sample:$env.BUILD_ID")
                }
            }
        }
      
       
            
            
        
      
}
}
