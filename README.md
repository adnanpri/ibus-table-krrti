# bn-krrti

A straightforward Bangla keyboard for Linux. It's essentially an IBus table. It does not perform phonetic spelling.

krrti tries to follow a simple convention for writing consonant conjunctions, diacritics and alternate forms.

![](https://raw.githubusercontent.com/adnanpri/ibus-table-krrti/main/demo.gif)

It's based on [mni-mayek](https://github.com/heisantosh/ibus-table-mni).

## Language and script codes

| Name        | Code | Standard |
|-------------|------|----------|
|Bengali     | bn  | ISO 639-1, ISO 639-2 |

## Usage guide

### General
Consonants are mapped to their Latin approximates in the lower case, e.g. `k` -> `ক`, `g` -> `গ` etc.

Aspirated letters are written by adding an `h` at the end of their unaspirated counterparts, e.g. `kh` -> `খ`, `gh` -> `ঘ` etc.

Retroflex letters (মূর্ধন্য) begin with a capital letter, but otherwise are similar to their dental (দন্ত্য) counterparts, e.g. `T` -> `ট`, `Th` -> `ঠ` etc.

Exception: `র` is mapped to `r` instead.

Certain alternate forms and allophones are mapped to the base letter followed by a `:`, e.g. `t:` -> `ৎ`, `O:` -> `অ` etc.

### Vowels

Vowels in their diacritic forms are mapped to their lowercase Latin approximates. e.g. `i` -> `ি`, `e` -> `ে` etc.

Vowels in their independent forms are mapped to their uppercase Latin approximates, e.g. `A` -> `আ`, `U` -> `উ` etc. Long vowels are short vowels repeated, e.g. `II` -> `ঈ`.

### Consonant conjunctions

The key differences with phonetic keyboards are that inherent vowels are omitted and consonant conjunctions are imperative (through explicit use of virama, `্`, with a `;`).

It follows the formula `consonant + ্ + consonant = conjunct`

i.e. `স + ্ + ন = স্ন`, `ম + ্ + ল = ম্ল` etc.

Diacritic forms of consonants are applied automatically, e.g.

‍‍্র (রফলা): `প + ্ + র = প্র`

‍‍র্ক (রেফ): `র + ্ + ক = র্ক`

Certain graphemes and letters that exist in their diacritic forms do not require ` ্` (same as vowels), e.g.

 ‍্য (যফলা): `ল + ‍্য = ল‍্য`

‍ঁ (চন্দ্রবিন্দু): `ব + ‍ঁ = বঁ`

‍‍্র (রফলা): `প + ‍‍্র = প্র`

The input sequence for these end in a `:`, e.g. `y:` -> `‍্য`, `r:` -> `‍‍্র` etc.

The ৃ (ঋ কার), of course, is a linquistic absurdity that follows no such convention and is mapped to `rr`. Hence, `krrti` -> `কৃতি`.

Please refer to the full table below.

## Mappings

| Latin | Bangla | Frequency |
|:-----:|:-----:|:-----:|
k|ক|2
kh|খ|2
g|গ|2
gh|ঘ|2
Ng|ঙ|2
ch|চ|2
chh|ছ|1
z|জ|1
j:|জ|1
jh|ঝ|1
ngg|ঞ|1
T|ট|1
Th|ঠ|1
D|ড|1
Dh|ঢ|1
N|ণ|1
t|ত|1
th|থ|1
d|দ|1
dh|ধ|1
n|ন|1
p|প|1
ph|ফ|1
f|ফ|1
b|ব|1
bh|ভ|1
m|ম|1
j|য|1
r|র|1
l|ল|1
sh|শ|1
Sh|ষ|1
s|স|1
h|হ|1
t:|ৎ|1
ng|ং|1
o|ো|1
O|ও|1
O:|অ|1
i|ি|1
ii|ী|2
I|ই|2
II|ঈ|2
a|া|2
A|আ|2
e|ে|2
E|এ|2
ou|ৌ|2
oi|ৈ|2
u|ু|2
uu|ূ|2
U|উ|2
UU|ঊ|2
rr|ৃ|2
rr:|ঋ|1
R:|ড়|1
Dh:|ঢ়|1
y|য়|2
y:|‍্য|1
r:|‍‍্র|1
b:|‍্ব|1
;|্|2
ng:|ঁ|2
::|ঃ|2
0|০|2
1|১|2
2|২|2
3|৩|2
4|৪|2
5|৫|2
6|৬|2
7|৭|2
8|৮|2
9|৯|2
.|৷|1
;;|;|1

## Installation

Run the following:

```bash
./install.sh
```

### Add input method

On Pop_OS 21.10 or Ubuntu 21.10 (Gnome)

1. Go to Settings -> Keyboard
2. Click on `+` and select `Bangla (Bangladesh)`
3. Select `Bangla (krrti)`

## References

* Wikipedia article on [Bengali alphabet](https://en.wikipedia.org/wiki/Bengali_alphabet)
* Unicode [code chart](https://www.unicode.org/charts/PDF/U0980.pdf) for Bangla
