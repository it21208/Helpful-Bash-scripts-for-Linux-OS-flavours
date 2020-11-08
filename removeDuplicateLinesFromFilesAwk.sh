awk '!visited[$0]++' your_file > deduplicated_file

# The uniq command removes only the adjacent duplicate lines. Here's a demonstration:
# $ cat test.txt
# A
# A
# A
# B
# B
# B
# A
# A
# C
# C
# C
# B
# B
# A
# $ uniq < test.txt
# A
# B
# A
# C
# B
# A
# We can also use the following sort command to remove the duplicate lines, but the line order is not preserved.
sort -u your_file > sorted_deduplicated_file
# abc
# ghi
# abc
# def
# xyz
# def
# ghi
# klm
cat -n test.txt  # prepends the order number in each line.
# 1       abc
# 2       ghi
# 3       abc
# 4       def
# 5       xyz
# 6       def
# 7       ghi
# 8       klm
# sort -uk2 sorts the lines based on the second column (k2 option) and keeps only the first occurrence of the lines with the same second column value (u option).
# 1       abc
# 4       def
# 2       ghi
# 8       klm
# 5       xyz
# sort -nk1 sorts the lines based on their first column (k1 option) treating the column as a number (-n option).
# 1       abc
# 2       ghi
# 4       def
# 5       xyz
# 8       klm
# Finally, cut -f2- prints each line starting from the second column until its end (-f2- option: Note the - suffix, which instructs it to include the rest of the line).
# abc
# ghi
# def
# xyz
# klm
