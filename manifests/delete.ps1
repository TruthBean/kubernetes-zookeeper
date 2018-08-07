function getK8sAndDelete {
    param (
        $actionType,
        $namespace
    )

    $sfss = & kubectl get $actionType --namespace=$namespace
    foreach ($sfs in $sfss) {
        $sfsName = $($sfs -split "\s+")[0]
        if ($sfsName -ne "NAME") {
            Write-Output "kubectl delete $actionType $sfsName --namespace=$namespace"
            kubectl delete $actionType $sfsName --namespace=$namespace
        }
    }
}

getK8sAndDelete -actionType statefulset -namespace common;
getK8sAndDelete -actionType deploy -namespace common;
getK8sAndDelete -actionType services -namespace common;
getK8sAndDelete -actionType pvc -namespace common;
getK8sAndDelete -actionType pv -namespace common;
getK8sAndDelete -actionType pod -namespace common;
getK8sAndDelete -actionType pdb -namespace common;