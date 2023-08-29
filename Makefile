CC = opencc_dict
CFLAGS = -f text -t ocd2

all: opencc/STGCharacters.ocd2 opencc/STGPhrases.ocd2 opencc/s2tg.json

dicts/STGCharacters.txt: src/*.txt
	cat src/*.txt | sort -s | awk '!seen[$$1]++' > $@

opencc/STGCharacters.ocd2: dicts/STGCharacters.txt
	$(CC) $(CFLAGS) -i $< -o $@

opencc/STGPhrases.ocd2: dicts/STGPhrases.txt
	$(CC) $(CFLAGS) -i $< -o $@

clean:
	rm -rf opencc/*.ocd2 dicts/STGCharacters.txt

.PHONY: all clean
