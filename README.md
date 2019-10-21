<<<<<<< HEAD
系统管理-插件管理-安装kubernetes 插件

系统管理-系统设置-新增一个云
名称 kubernetes
Jenkins 地址  {http://jenkinsIP:30030}

系统管理-全局安全配置-代理-指定端口：改为 30033



test Pipeline script


podTemplate(label: 'mypod', cloud: 'kubernetes')
{
    node ('mypod') {
        stage('test') {
            echo "hello, world"
            sleep 60
        }
    }
}

正确输出为：
Started by user admin
Running in Durability level: MAX_SURVIVABILITY
[Pipeline] Start of Pipeline
[Pipeline] podTemplate
[Pipeline] {
[Pipeline] node
Still waiting to schedule task
‘Jenkins’ doesn’t have label ‘mypod’
Agent mypod-h2ntz-m1lrc is provisioned from template Kubernetes Pod Template
---
apiVersion: "v1"
kind: "Pod"
metadata:
  annotations:
    buildUrl: "http://192.168.6.188:30030/job/test/3/"
  labels:
    jenkins: "slave"
    jenkins/mypod: "true"
  name: "mypod-h2ntz-m1lrc"
spec:
  containers:
  - env:
    - name: "JENKINS_SECRET"
      value: "********"
    - name: "JENKINS_AGENT_NAME"
      value: "mypod-h2ntz-m1lrc"
    - name: "JENKINS_NAME"
      value: "mypod-h2ntz-m1lrc"
    - name: "JENKINS_AGENT_WORKDIR"
      value: "/home/jenkins/agent"
    - name: "JENKINS_URL"
      value: "http://192.168.6.188:30030/"
    image: "jenkins/jnlp-slave:alpine"
    name: "jnlp"
    volumeMounts:
    - mountPath: "/home/jenkins/agent"
      name: "workspace-volume"
      readOnly: false
  nodeSelector: {}
  restartPolicy: "Never"
  volumes:
  - emptyDir:
      medium: ""
    name: "workspace-volume"

Running on mypod-h2ntz-m1lrc in /home/jenkins/agent/workspace/test
[Pipeline] {
[Pipeline] stage
[Pipeline] { (test)
[Pipeline] echo
hello, world
[Pipeline] sleep
Sleeping for 1 min 0 sec
[Pipeline] }
[Pipeline] // stage
[Pipeline] }
[Pipeline] // node
[Pipeline] }
[Pipeline] // podTemplate
[Pipeline] End of Pipeline
Finished: SUCCESS
=======
# jenkins in k8s yml
>>>>>>> 6be8023fc7242fd653aa4f9a81217f3c5ce61fb3
