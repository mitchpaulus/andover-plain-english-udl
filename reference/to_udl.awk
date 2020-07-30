BEGIN { FS=OFS="," }

{
   if (types[$3] == "") {
       types[$3] = toupper($2)
   }
   else {
       types[$3] = types[$3] " " toupper($2)
   }
}

END {
    i = 1
    for (type in types) {
        printf "            <Keywords name=\"Keywords%s\">%s</Keywords>\n", i, types[type]
        i++
    }
}
