Router / Ingress둘다 배포해도 상관 없지만, 둘의 설정방식의 차이가 존재  

1. Router는 ConfigMap에 Healthcheck나 Profile등을 작성
2. Ingress는 ingress resource type에 annotation을 작성
