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
