# Boilerplate detector

This script shows how much boilerplate a programming language has 

Scripts have to be ececuted in a parent directory of a project or a workspace with many projects

Know your most used lines
```bash
bash lines.sh "<project dir>" "<file extension>
bash lines.sh ./../../project "*.go" > output-go-words.txt
```

Know your most used words
```bash
bash words.sh ./../../project "*.go" > output-go-words.txt
```

## Example
Project https://github.com/algorand/go-algorand on commit b81994e0f2a0b4372e9c22673f6458c685e2f593 has this output:

```
> bash run.sh . '*.go' | tail -n 20
    665 // go-algorand is distributed in the hope that it will be useful,
    665 // go-algorand is free software: you can redistribute it and/or modify
    665 // it under the terms of the GNU Affero General Public License as
    665 // License, or (at your option) any later version.
    665 // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    665 // published by the Free Software Foundation, either version 3 of the
    665 // This file is part of go-algorand
    665 // You should have received a copy of the GNU Affero General Public License
    682 import (
    747 } else {
    758 },
    893 )
   1080 require.NoError(t, err)
   2646 //
   4840 return
   5169 if err != nil {
  23718 
  26725 }
Total count:
213828
```
Which means that `5169` lines out of `213828` is this exact if line: `if err != nil {`. Which is ~2.4%.
Golang projects mostly have a similar quantity of this line. Some have less but this line is very prevalent in golang.
