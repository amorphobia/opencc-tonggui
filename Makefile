SHELL=/bin/bash
# https://stackoverflow.com/a/12838683/6676742
export LC_ALL := C
CC = opencc_dict
CFLAGS = -f text -t ocd2

all: opencc/STGCharacters.ocd2 opencc/STGPhrases.ocd2 opencc/s2tg.json

dicts/STGCharacters.txt: src/*.txt
	cat src/*.txt | sort -s | awk '!seen[$$1]++' > $@

opencc/STGCharacters.ocd2: dicts/STGCharacters.txt
	$(CC) $(CFLAGS) -i $< -o $@

opencc/STGPhrases.ocd2: dicts/STGPhrases.txt
	$(CC) $(CFLAGS) -i $< -o $@

check: src/*.txt
	diff <(cat src/*.txt | tr -d '\r' | sort -s) <(cat src/*.txt | tr -d '\r' | sort -s | awk '!seen[$$1]++')

sort: src/03.deduced.txt
	sort -o src/03.deduced.txt{,}
	sort -o dicts/STGPhrases.txt{,}

clean:
	rm -rf opencc/*.ocd2 dicts/STGCharacters.txt

.PHONY: all check sort clean
