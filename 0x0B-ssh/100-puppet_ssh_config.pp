# using puppet to make changes to the default ssh config file
# so that one can connect to a server without typing a password

include stdlib

file_line { 'SSH Private Key':
    path               => '/etc/ssh/ssh_config',
    line               => 'IndentifyFile ~/.ssh/school',
    match              => '^[#]+[\s]*(?i)IdentifyFile[\s]+~/.ssh/school',
    replace            => true,
    append_on_no_match => true
}

# Regex match explaination
#
# ^ beginning of the line
# [#]* at least one hash character
# [\s]* zero or more white space characters
# (?i)IdentifyFile case insensitive "IdentifyFile"
# [\s]+ at least one white space character
# ~/.ssh/id_rsa The ssh private key file path we want to replace

file_line { 'Deny Password Auth':
     path                   => '/etc/ssh/ssh_config',
     line                   => 'PasswordAuthentication no,
     match                  => '^[#]+[\s]*(?i)PasswordAuthentication[\s]+~/.ssh/school',
     replace                => true,
     append_on_no_match     => true
}

# Regex match explaination
#
# ^ beginning of the line
# [#]* at least one hash character
# [\s]* zero or more white space characters
# (?i)PasswordAuthentication case insensitive "PasswordAuthentication"
# [\s]+ at least one white space character
# ~/.ssh/id_rsa The ssh private key file path we want to replace
# $ end of the line
