These files come from the PDF reference. In particular, these are tables
extracted from pages 118 through 122, Tables 7-1 through 7-3.

These tables do not include two common keywords, *ENDIF* and *NUMERIC*.
Those had to be added manually after the fact.

To build the XML elements for the UDL file, used a command similar to:

```sh
cat *.csv | awk -f clean.awk | awk -f to_udl.awk
```

Tabula was used to extract the information out of the PDF tables.
