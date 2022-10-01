abbr -ag az-ssh-cert 'az ssh cert --public-key-file ~/.ssh/id_rsa.pub'

abbr -ag moneybag-bastion 'az ssh cert --public-key-file ~/.ssh/id_rsa.pub; ssh -F /Users/andriepu/.ssh/azure-config -NL 13306:mysql-payment-domain-moneybag.dev.o2o.buka20.mysql.database.azure.com:3306 bastion.dev.o2o.buka20.com'
