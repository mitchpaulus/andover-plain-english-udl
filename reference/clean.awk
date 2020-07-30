BEGIN { FS=OFS="," }

{

    # Remove all quoting
    gsub("\"", "")

    header = $1

    numwords = split($2, keywords, "|")
    numtypes = split($3, type, "|")

    for (i = 1; i <= numwords; i++) {

        keyword = keywords[i]

        numsplit = split(keyword, ind_keys, /\.+/)

        for (j = 1; j <= numsplit; j++) {
            print header, ind_keys[j], type[i]
        }
    }
}
