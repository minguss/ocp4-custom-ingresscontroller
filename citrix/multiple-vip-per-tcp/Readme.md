DB Pod은 scale-out을 하게 될 경우 Conflict이 발생하여 StatefulSet타입으로 배포하여  
Pod별로 고유한 PV/PVC를 갖도록 설정하고, headless svc타입으로 배포한 뒤, 각각의 서비스를 ingress/router로 expose한다.  
그리고 expose된 url을 이용하여 clustering설정을 한다.
