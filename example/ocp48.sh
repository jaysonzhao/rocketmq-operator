oc new-project rocketmq
cd deploy/
cd crds
oc apply -f .
cd ..
oc apply -f role.yaml
oc apply -f service_account.yaml
oc apply -f role_binding.yaml
oc adm policy add-scc-to-user anyuid -z rocketmq-operator
oc adm policy add-scc-to-user anyuid -z default
cd example
oc apply -f rocketmq_v1alpha1_rocketmq_cluster.yaml

