############################ architecture directory ###

# remove spaces
rename 's/ //g' *

# convet - to _
rename 's/-/_/g' *

# remove the word Arch_
rename 's/Arch_//g' *

# remove Amazon
rename 's/Amazon_//g' *

# remove AWS
rename 's/AWS_//g' *

# remove _48
rename 's/_48//g' *

# convert to lowercase letters
rename -f 'y/A-Z/a-z/' *

############################# category directory ###

# remove spaces
rename 's/ //g' *

# convet - to _
rename 's/-/_/g' *

# remove the word Arch_
rename 's/Arch_//g' *

# remove the word category
rename 's/Category_//g' *

# remove _64
rename 's/_64//g' *

# convert to lowercase letters
rename -f 'y/A-Z/a-z/' *

########################## resource directory

# remove spaces
rename 's/ //g' *

# convet - to _
rename 's/-/_/g' *

# remove the word Res_
rename 's/Res_//g' *

# remove the word Amazon_
rename 's/Amazon_//g' *

# remove AWS
rename 's/^AWS_//g' *

# remove _48_Light
rename 's/_48_Light//g' *

# convert to lower case letters
rename -f 'y/A-Z/a-z/' *
