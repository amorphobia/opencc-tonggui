SHELL=/bin/bash
# https://stackoverflow.com/a/12838683/6676742
export LC_ALL := C
CC = opencc_dict
CFLAGS = -f text -t ocd2

all: opencc/STGCharacters.ocd2 opencc/STGPhrases.ocd2 opencc/s2tg.json
extend: src/00.extend.txt opencc/STGCharacters.ocd2 opencc/STGPhrases.ocd2 opencc/s2tg.json

src/00.extend.txt: src/00.extend.txt.in
	cp $< $@

dicts/STGCharacters.txt: src/*.txt
	cat src/*.txt | sort -s | awk '!seen[$$1]++' > $@

opencc/STGCharacters.ocd2: dicts/STGCharacters.txt
	$(CC) $(CFLAGS) -i $< -o $@

opencc/STGPhrases.ocd2: dicts/STGPhrases.txt
	$(CC) $(CFLAGS) -i $< -o $@

check: src/*.txt
	diff <(cat src/00.extend.txt.in | tr -d '\r' | sort -s) <(cat src/00.extend.txt.in | tr -d '\r' | sort -s | awk '!seen[$$1]++')
	diff <(cat src/*.txt | tr -d '\r' | sort -s) <(cat src/*.txt | tr -d '\r' | sort -s | awk '!seen[$$1]++')
	diff <(cat dicts/STGPhrases.txt | tr -d '\r' | sort -s) <(cat dicts/STGPhrases.txt | tr -d '\r' | sort -s | awk '!seen[$$1]++')

sort: src/03.deduced.txt
	sort -o src/00.extend.txt.in{,}
	sort -o src/03.deduced.txt{,}
	sort -o dicts/STGPhrases.txt{,}

clean:
	rm -rf opencc/*.ocd2 dicts/STGCharacters.txt src/00.extend.txt

.PHONY: all extend check sort clean
