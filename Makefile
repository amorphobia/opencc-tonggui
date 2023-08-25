CC = opencc_dict
CFLAGS = -f text -t ocd2

all: opencc/STGCharacters.ocd2 opencc/STGPhrases.ocd2 opencc/s2tg.json

opencc/s2tg.json: data/config/s2tg.json
	cp data/config/s2tg.json opencc/

data/dictionary/STGCharacters.txt: data/src/*.txt
	cat data/src/*.txt | sort -s | awk '!seen[$$1]++' > $@

opencc/STGCharacters.ocd2: data/dictionary/STGCharacters.txt
	$(CC) $(CFLAGS) -i $< -o $@

opencc/STGPhrases.ocd2: data/dictionary/STGPhrases.txt
	$(CC) $(CFLAGS) -i $< -o $@

clean:
	rm -rf opencc/*.ocd2 opencc/*.json data/dictionary/STGCharacters.txt

.PHONY: all clean
