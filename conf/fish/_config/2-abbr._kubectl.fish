function kubessh
  set -l service $argv[1]
  set -l options 'f/filter=?'

  argparse $options -- $argv

  set -l filter ''

  if test $_flag_filter; set filter $_flag_filter; end

  set -l pod_name (string replace 'pod/' '' (kubectl -n $service get pods -o name | grep $filter | head -n 1))

  kubectl -n $service exec -it $pod_name -- sh
end

abbr -ag ssh_sievexfe 'kubessh sievex-frontend --filter=admin'
