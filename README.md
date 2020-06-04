# ocp4-custom-ingresscontroller
this repository is custom ingresscontroller on Openshift4.x for test purpose. (replace haproxy router)

- [x] Citrix ADC MPX/VPX/CPX
- [x] F5 ADC

## Opinion
1. Citrix의 경우 Management IP / Subnet / VIP모두 같은 IP대역이라도 무관했음. (삽질을 덜 했음) 반면, F5의 경우 이 Network Interface를 설정하는데 많이 애를 먹었다. 이 부분에 대한 가이드가 충분했으면 금방 테스트 했을듯
2. F5는 Ingress뿐만 아니라 OCP4에서도 Router Type으로 배포가 가능했다. 엄밀하게 따지면, Default HAProxy Router와 F5 Big-IP 두가지 Endpoint를 갖게 된다고 볼 수 있었다. TCP는 별도의 설정이나 Ingress에 annotaion을 붙이는 것으로 해결할 수 있었다. 이러한 점에서는 좀더 편하게 F5를 사용할 수 있지 않을까 생각한다.
3. Citrix의 경우 Static Route설정, F5는 SDN조인이 필요하다.
