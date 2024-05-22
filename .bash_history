sudo ss -tuln | grep 560
nc -vz 10.150.96.30 560
clear
sudo rsyslogd -dn  # Runs rsyslog in the foreground with debug output
clear
sudo tcpdump -i any tcp port 560 -nn -v
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
nc -vz 10.150.96.30 560
sudo rm /var/run/rsyslogd.pid
sudo systemctl restart rsyslog
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
sudo vi etc/td-agent/td-agent.conf
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
sudo systemctl resta
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
ls /etc/rsyslog.conf
cat /etc/rsyslog.conf
cat /etc/rsyslog.d
cd /etc/rsyslog.d
ls
cat iscsid-rsyslog.conf 
cleaar
clear
cd
ss -tuln | grep 560
# or
netstat -tuln | grep 560
firewall-cmd --zone=public --add-port=560/tcp --permanent
firewall-cmd --reload
iptables -I INPUT -p tcp --dport 560 -j ACCEPT
sudo -i
nc -vz 10.150.96.30 560
clear
nc -vz 10.150.96.30 560
ss -tuln | grep 560
# or alternatively
netstat -tuln | grep 560
sudo firewall-cmd --zone=public --add-port=560/tcp --permanent
sudo firewall-cmd --reload
nc -vz localhost 560
sestatus
ausearch -m avc -ts recent | grep rsyslog
sudo ausearch -m avc -ts recent | grep rsyslog
clear
sudo journalctl -u rsyslog
clear
tail -f /var/log/td-agent/td-agent.log
sudo setenforce 0
sudo setenforce 1
semanage port -l | grep 560
sudo semanage port -a -t syslogd_port_t -p tcp 560
sudo firewall-cmd --list-all
sudo ausearch -m avc -ts recent | grep rsyslog
clear
kubectl get configmaps -n default
clear
kubectl get daemonsets,deployments -n default
clear
kubectl describe configmap loki-loki-stack -n default
k get po
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k get pods
k describe po loki-promtail-5jfw7
clear
kubectl get daemonsets -n default
kubectl describe daemonset <daemonset-name> -n default
kubectl describe daemonset loki-promtail -n default
clear
kubectl describe secret loki-promtail -n default
clear
kubectl get secret loki-promtail -n default -o jsonpath="{.data.promtail\.yaml}" | base64 --decode
clear
kubectl logs -l app.kubernetes.io/name=promtail -n default --tail=50
kubectl port-forward service/loki 3100:3100 -n default
exit
ssh -L 3100:localhost:3100 ikay@10.150.55.102 -p 9052
logou
logout
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
ssh -L 3101:localhost:3100 ikay@10.150.55.102 -p 9052 -N
ssh -L 5672:localhost:3100 ikay@10.150.55.102 -p 5672 -N
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k get svc -n default 
lsof -i :3100
kubectl port-forward svc/loki 3101:3100 -n default
clear
ssh -L 3100:10.157.11.216:3100 -L 15672:10.157.11.56:15672 -L 3000:10.157.11.20:80 -p 9052 ikay@bastionsrv
lsof -i :3100
kill 3264618
kill -9 3264618
ssh -L 3100:localhost:3100 ikay@10.150.55.102 -p 9052 -N
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
# Forward local port 3100 to Loki's port 3100
kubectl port-forward service/loki 3100:3100 -n default
kubectl get svc -n default
 clear
k9s
kubectl logs -n default -l app=loki
kubectl port-forward service/loki 3100:3100 -n default
kubectl port-forward service/grafana 80:3000 -n default
k9s
clear
ssh -L 3100:localhost:3100 ikay@10.150.55.102 -p 9052
logout
clear
kubectl port-forward svc/rabbitmq 15672:15672
lsof -i :15672
kill 3317942
kill 33581524
kill 3322903
exit
lsof -i :15672
lsof -i :15673
kill 3327922
logout
clear
logout
ls
cd helm-onprem
clear
ls
sudo vi commands
sudo vi commandlines.txt 
clear
kubectl port-forward svc/rabbitmq 15672:15672
curl 10.157.11.56:15672
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
lsof -i :15672
kill 3317942
lsof -i :15672
ssh -L 15672:127.0.0.1:15672 -p 9052 ikay@10.150.55.102
lsof -i :15672
kubectl port-forward svc/rabbitmq 15672:15672
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
kubectl port-forward svc/rabbitmq 15672:15672
clear
logout
k9s
kubectl port-forward svc/loki 3100:3100
kubectl port-forward svc/grafana 3000:3000
kubectl port-forward svc/grafana 8080:3000
kubectl port-forward svc/grafana 80:3000
k get svc
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clea
clear
k get svc
kubectl port-forward svc/grafana 80:80
kubectl port-forward svc/loki 3100:3100
clear
kubectl port-forward svc/loki 3100:3100
logout
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
kubectl port-forward svc/loki 3100:3100 -n namespace
kubectl port-forward svc/loki 3100:3100 -n default 
lsof -i 
kill 3367800
lsof -i 
kubectl port-forward svc/loki 3100:3100 -n default 
clear
kubectl port-forward svc/loki 3100:3100 -n default 
clear
kubectl port-forward svc/loki 3100:3100 -n default 
lsof -i 
kubectl port-forward svc/grafana 3000:80 -n namespace
kubectl port-forward svc/grafana 3000:80 -n default 
clear
kubectl port-forward svc/loki 3100:3100 -n namespace
kubectl port-forward svc/loki 3100:3100 -n default 
kubectl port-forward svc/grafana 3000:80 -n default 
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
helm list -A  # Lists all Helm releases in all namespaces
kubectl get configmaps -n <namespace> -l "app.kubernetes.io/managed-by=Helm"
kubectl get secrets -n <namespace> -l "app.kubernetes.io/managed-by=Helm"
kubectl get secrets -n default -l "app.kubernetes.io/managed-by=Helm"
kubectl get configmaps -n default -l "app.kubernetes.io/managed-by=Helm"
clear
helm get values loki -n default
clear
kubectl get configmaps -n default -l "app.kubernetes.io/name=loki" -o yaml
kubectl get secrets -n default -l "app.kubernetes.io/name=loki" -o yaml
kubectl get deployment -n default -l "app.kubernetes.io/name=loki" -o yaml
# or if Loki is managed as a StatefulSet
kubectl get statefulset -n default -l "app.kubernetes.io/name=loki" -o yaml
kubectl get all --all-namespaces -l "app.kubernetes.io/name=loki"
helm get manifest loki -n default
clear
kubectl get pods -n default -l "app.kubernetes.io/name=loki"
# Use a specific pod name from the output above
kubectl exec -it <loki-pod-name> -n default -- ls /etc/loki
kubectl exec -it <loki-pod-name> -A -- ls /etc/loki
kubectl exec -it loki-0 -n default -- ls /etc/loki
kubectl exec -it loki-0 -n default -- cat /etc/loki/loki.yaml
clear
fluentd --config /etc/fluentd/fluent.conf --dry-run
which fluentd
clear
k9s
sudo vi fluent.conf 
k delete configmaps fluentd-config 
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
sudo tcpdump -i any port 560 -A
lsof -i 
kill 3457804
logout
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
kubectl port-forward svc/grafana 3000:80 -n default 
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
kubectl port-forward svc/grafana 3000:80 -n default 
lsof -i 
kill 3472849
kubectl port-forward svc/grafana 3000:80 -n default
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
nc -vz <syslog-server-ip> <port>
nc -vz 10.150.96.30 560
sudo systemctl status rsyslog
sudo iptables -L
sudo firewall-cmd --list-all
clear
sudo journalctl -u rsyslog
clear
sudo ss -tuln | grep 560
sudo netstat -tuln | grep 560
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
nc -vz 127.0.0.1 560
sudo tcpdump -i any port 560 -nn
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
nc -vz 10.150.96.30 560
sudo nano /etc/rsyslog.conf
sudo vi /etc/rsyslog.conf
sudo ausearch -m avc -ts recent | grep rsyslog
sudo setenforce 0
nc -vz 10.150.96.30 560
sudo netstat -tuln | grep 560
ip addr show
nc -vz 10.150.55.102 560
ping 10.150.96.30
clear
traceroute 10.150.96.30
nmap -p 560 10.150.96.30
sudo yum install nmap
nmap -p 560 10.150.96.30
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
sudo vi /etc/rsyslog.conf
sudo systemctl restart rsyslog
sudo vi /var/log/syslog
journalctl -u rsyslog
sudo journalctl -u rsyslog
clear
echo "Test message" | nc -u 10.150.96.30 560
sudo vi fluent.conf 
sudo systemctl restart fluentd
k delete configmaps fluentd-config 
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
sudo vi fluent.conf 
k delete configmaps fluentd-config 
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
k get po
clear
k9s
k get svc -n kube-system 
k get po
k get po -A
k describe po fluentd-glcqj -n kube-system 
k get DaemonSet/fluentd -n kube-system 
k get DaemonSet/fluentd -n default 
k delete  DaemonSet/fluentd -n kube-system 
k get po -A
k describe po  keda-metrics-apiserver-7b6bc4bfdb-xbx4h -n keda 
k delete ReplicaSet/keda-metrics-apiserver-7b6bc4bfdb -n keda 
clear
k get po -A
k delete po  smtp-test-pod -n default 
clear
sudo vi fluent.conf 
k delete configmaps fluentd-config 
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
sudo vi fluent.conf 
k delete configmaps fluentd-config 
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
sudo vi fluent.conf 
k delete configmaps fluentd-config 
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
clear
k get po
clear
k get configmap -n default 
k get deployments.apps -n default 
clear
k get configmap -n default 
k edit configmaps loki-loki-stack
clear
kubectl get configmap loki-loki-stack -n default -o yaml > loki-configmap.yaml
sudo vi loki-configmap.yaml 
kubectl apply -f loki-configmap.yaml
kubectl delete pods -l app=loki -n default
k9s
sudo vi loki-configmap.yaml 
kubectl apply -f loki-configmap.yaml
k get po
kubectl apply -f loki-configmap.yaml
kubectl replace -f loki-configmap.yaml
kubectl get configmap loki-loki-stack -n default -o yaml > latest-loki-configmap.yaml
sudo vi latest-loki-configmap.yaml 
kubectl apply -f latest-loki-configmap.yaml
kubectl replace -f latest-loki-configmap.yaml
kubectl replace --force -f latest-loki-configmap.yaml
clear
k9s
kubectl delete pods -l app=loki -n default
k9s
kubectl get configmaps -n <namespace> | grep loki
kubectl get configmaps -n default | grep loki
kubectl get configmap loki-loki-stack-test -n default -o yaml
clear
kubectl get deployments -n default | grep loki
kubectl get statefulsets -n default | grep loki
kubectl get statefulset loki -n default -o yaml
clear
kubectl get secret loki -n default -o yaml
kubectl get secret loki -n default -o jsonpath="{.data.loki\\.yaml}" | base64 --decode
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
sudo vi loki-configmap.yaml 
clear
kubectl get secret loki -n default -o jsonpath="{.data.loki\\.yaml}" | base64 --decode > loki.yaml
cat loki.yaml
sudo vi loki.yaml
sudo vi loki.yaml 
cat loki.yaml | base64
kubectl edit secret loki -n default
kubectl create secret generic loki --from-file=loki.yaml=editable-loki.yaml -n default --dry-run=client -o yaml | kubectl apply -f -
kubectl create secret generic loki --from-file=loki.yaml=loki.yaml -n default --dry-run=client -o yaml | kubectl apply -f -
kubectl get secret loki -n default -o jsonpath="{.data.loki\\.yaml}" | base64 --decode
clear
kubectl logs -n default -l app=loki --tail=50
clear
k9s
k get po
clear
k9s
systemctl status prometheus  # Or the relevant service
netstat -tulnp | grep :9090
sudo netstat -tulnp | grep :9090
logout
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
k get po 
k9s
k get po -A
k logs prometheus-server-64fd8d8fc7-l5r8g -n monitoring 
k describe po prometheus-server-64fd8d8fc7-l5r8g -n monitoring 
clear
kubectl describe po prometheus-server-64fd8d8fc7-l5r8g -n monitoring
clear
kubectl get pv
kubectl get pvc -n monitoring
clear
kubectl get pv prometheus-server-pv -o yaml
clear
kubectl describe pv prometheus-server-pv
kubectl delete po prometheus-server-64fd8d8fc7-l5r8g -n monitoring
k9s
k get svc
k get svc -A
clear
k9s
kubectl port-forward svc/prometheus-alertmanager 9093:80 -n default 
[ikay@bastionsrv ~]$ kubectl port-forward svc/prometheus-alertmanager 9093:80 -n default
Error from server (NotFound): services "prometheus-alertmanager" not found
[ikay@bastionsrv ~]$
kubectl port-forward svc/prometheus-alertmanager 9093:80 -n monitoring 
k get svc -n monitoring 
kubectl port-forward svc/prometheus-alertmanager 9093:9093 -n monitoring
kubectl port-forward svc/prometheus-alertmanager 9090:9090 -n monitoring
kubectl port-forward svc/prometheus-server 9090:9090 -n monitoring
kubectl logs -f -l app=fluentd
# or for Fluent Bit
kubectl logs -f -l app=fluent-bit -n pks-system
k9s
clear
kubectl logs -f -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluentd
k get po
k logs -f fluentd-67zkc
netstat -tuln | grep 9090
netstat -tuln | grep 9093
curl 'http://localhost:9093/api/v1/query?query=up'
curl 'http://localhost:9090/api/v1/query?query=up'
clear
logout
clear
kubectl get pods -l "release=prometheus"
kubectl get svc -l "release=prometheus"
kubectl get svc -l "release=prometheus" -n default 
kubectl get pods --all-namespaces -l "release=prometheus"
kubectl get svc -l "release=prometheus" -n monitoring 
kubectl get pods -n monitoring
helm list --all-namespaces
clear
kubectl get svc -n <namespace> | grep prometheus
kubectl get svc -n monitoring | grep prometheus
kubectl port-forward svc/grafana 3000:80 -n default 
kubectl logs -f -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system -c fluent-bit
kubectl logs fluent-bit -n pks-system 
clear
k get po -A
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k get po -A
k logs fluent-bit-d8qj9 -n pks-system 
k logs fluentd-67zkc
clear
k9s
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
clear
kubectl port-forward <fluent-bit-pod-name> 2020 -n <namespace>
kubectl port-forward fluent-bit-cwrqj 2020 -n pks-system 
kubectl port-forward grafana-5c88644c6-pbbfd 3000 -n pks-system 
kubectl port-forward grafana-5c88644c6-pbbfd 3000 -n default 
udo vi fluent.conf
sudo vi fluent.conf
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
cear
clear
k delete configmaps fluentd-config
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
sudo vi fluent.conf
k delete configmaps fluentd-config
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
sudo vi fluent.conf
k delete configmaps fluentd-config
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
kubectl get pods -n default -l app=fluentd -o wide
clear
k get po
clear
kubectl get configmap -n <namespace> -o yaml
kubectl get configmap -n default -o yaml
clear
kubectl get pods -n default -l app=fluentd -o wide
kubectl get pods --all-namespaces -o wide | grep fluentd
k logs -f fluentd-67zkc
kubectl exec -it [your-pod] -- /bin/sh -c 'echo "Test log from $(hostname)" >> /path/to/log/file'
clear
k get po -A
k logs -f fluent-bit-5hhm9
k logs -f fluent-bit-5hhm9 -n pks-system 
clear
k get po -A
clear
k9s
kubectl get configmaps -n pks-system | grep fluent-bit
kubectl get configmap <configmap-name> -n pks-system -o yaml
kubectl get configmap fluent-bit -n pks-system -o yaml
kubectl get configmap fluent-bit-ca -n pks-system -o yaml
clear
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
k9s
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
k9s
k get po
kubectl exec -it netshoot -- /bin/sh
clear
kubectl edit configmap fluent-bit -n pks-system
k get po
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
clear
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
clear
k9s
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
clear
k9s
kubectl edit configmap fluent-bit -n pks-system
k9s
k get daemonsets.apps -n pks-system 
clear
kubectl edit configmap fluent-bit -n pks-system
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
kubectl edit configmap fluent-bit -n pks-system
kubectl delete pods -l app=fluent-bit -n pks-system
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
k9s
logout
logout
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
kubectl exec <your-pod-name> --namespace <your-namespace> -- echo "Test log entry from $(date)"
kubectl exec netshoot --namespace default -- echo "Test log entry from $(date)"
k9s
sudo vi fluent.conf
k delete configmaps fluentd-config
kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
k9s
sudo vi fluent.conf
kubectl logs -f -l app=fluent-bit -n pks-system --max-log-requests=6
kubectl get pods -n <namespace> -l app=fluentd
kubectl get pods -n default -l app=flue
k get po
k describe po fluentd-4cw8n -n default 
k describe DaemonSet/fluentd -n default 
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
sudo vi fluent.conf
kubectl get daemonset fluentd -n kube-system -o yaml
kubectl get daemonset fluentd -n default -o yaml
kubectl get rolebinding,clusterrolebinding -n kube-system -o json | jq '.items[] | select(.subjects[]? | .kind == "ServiceAccount" and .name == "your-fluentd-service-account")'
kubectl get rolebinding,clusterrolebinding -n default -o json | jq '.items[] | select(.subjects[]? | .kind == "ServiceAccount" and .name == "your-fluentd-service-account")'
clear
sudo vi fluentd-rbac.yaml
kubectl apply -f fluentd-rbac.yaml
sudo vi fluentd-rbac.yaml
kubectl apply -f fluentd-rbac.yaml
clear
kubectl describe clusterrole fluentd-cluster-role
kubectl describe clusterrolebinding fluentd-cluster-role-binding
kubectl logs -f <name-of-fluentd-pod> -n default
k get po
kubectl logs -f fluentd-67zkc -n default
clear
k delete configmaps fluentd-config
 kubectl create configmap fluentd-config --from-file=fluent.conf=./fluent.conf -n default
kubectl rollout restart daemonset fluentd -n default
clear
kubectl logs -f fluentd-67zkc -n default
clear
kubectl logs -f fluentd-67zkc -n default kubectl exec -it <fluentd-pod-name> -n <namespace> -- gem list | grep fluent-plugin-kubernetes_metadata_filter
kubectl exec -it fluentd-67zkc -n default -- gem list | grep fluent-plugin-kubernetes_metadata_filter
k get po
kubectl exec -it fluentd-2hzj2 -n default -- gem list | grep fluent-plugin-kubernetes_metadata_filter
clear
kubectl get configmap -n default | grep fluentd
kubectl describe configmap <fluentd-configmap-name> -n default
kubectl get configmap -n default | grep fluentd
kubectl describe configmap fluentd-config -n default
kubectl logs <fluentd-pod-name> -n default
kubectl logs fluentd-2hzj2 -n default
clear
kubectl get pods -n monitoring  # Assuming Prometheus is installed in the 'monitoring' namespace
kubectl get po prometheus-server-64fd8d8fc7-b5tfg -n monitoring -o yaml
sudo vi prometheus-clusterrole.yaml
sudo vi prometheus-clusterrolebinding.yaml
k aplly -f prometheus-clusterrole.yaml 
k apply -f prometheus-clusterrole.yaml 
k apply -f prometheus-clusterrolebinding.yaml 
clear
sudo vi servicemonitor-fluentd.yaml
kubectl apply -f servicemonitor-fluentd.yaml -n monitoring
kubectl port-forward svc/prometheus-operated 9090 -n monitoring
kubectl port-forward svc/prometheus-operator 9090 -n monitoring
k get svc
k get svc -A
kubectl port-forward svc/prometheus-server 9090 -n monitoring
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
kubectl get pods -n default -l app=loki
kubectl logs -n default loki-0 
k describe po loki-0
kubectl logs -n default loki-0  -c
kubectl logs -n default loki-0  
clear
kubectl get configmap -n monitoring  # Assuming Prometheus is in the 'monitoring' namespace
kubectl describe configmap prometheus-server -n monitoring  # Replace 'prometheus-server' with the actual name if different.
clear
kubectl get svc loki -n default -o yaml
clear
kubectl edit configmap prometheus-server -n monitoring
kubectl rollout restart deployment/prometheus-server -n monitoring
kubectl logs -n monitoring -l app=prometheus,component=server
kubectl get pods -n monitoring
kubectl get pods -n monitoring --show-labels
clear
kubectl logs -n monitoring prometheus-server-bf45c987d-g7wc8
kubectl logs -n monitoring prometheus-server-bf45c987d-g7wc8 -c prometheus-server
clear
kubectl run curl --image=curlimages/curl --rm -ti --restart=Never --command -- curl http://loki.default.svc.cluster.local:3100/metrics
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
kubectl port-forward svc/loki 3100:3100 -n default
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
k9s
export CLUSTER_NAME=mtnrwanda-stage
export GPG_TTY=$(tty)
kubectl config use-context VOC_CLUSTER
export KUBECONFIG=~/.kube/config
chmod 600 /home/ikay/.kube/config
 source <(kubectl completion bash) 
 echo "source <(kubectl completion bash)" >> ~/.bashrc
 alias k=kubectl
complete -o default -F __start_kubectl k
clear
nmap -sV 10.157.11.74
nslookup 10.157.11.74
nslookup 10.157.11.72
dig -x 10.157.11.74
dig -x 10.157.11.72
clear
kubectl get nodes -o wide
kubectl describe node [node-name]
sudo nmap -Pn -sV -p- 10.157.11.74
clear
kubectl get pods -n kube-system -o wide | grep fluentd
kubectl get pods -n default -o wide | grep fluentd
k describe po fluentd-4cw8n 
clear
kubectl describe pods -l k8s-app=fluentd-logging -n kube-system
kubectl describe pods -l k8s-app=fluentd-logging -n default 
k describe DaemonSet/fluentd
sudo nmap -sP 10.157.11.74/32
ping 10.157.11.74
k get svc -A
traceroute 10.157.11.74
kubectl get pods -n pks-system -o wide | grep fluent-bit
clear
k9s
