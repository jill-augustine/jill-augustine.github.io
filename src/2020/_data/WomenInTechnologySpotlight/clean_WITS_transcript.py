'''
Opens WomenInTechnologySpotlight/captions.vtt, cleans lines and saves as 
WomenInTechnologySpotlight/captions_oneline.vtt.
Opens WomenInTechnologySpotlight/captions_manuallyedited.vtt, adds prefixes and 
capitalisation and saves as assets/txt/wits2021_transcript.txt.
'''

import re
import copy

def rmv_matching_lines(lines, pattern):
    return [line for line in lines if re.search(pattern, line) is None]

def rmv_nbsp(lines):
    return [line.replace("&nbsp;","") for line in lines]

def merge_lines(lines):
    return " ".join([line.replace('\n',"") for line in lines])

def rmv_ums(merged_lines):
    return (merged_lines.replace("um ","").replace(" um","")
                        .replace("uh ","").replace(" uh","")
            )

def capitalise_within(line):
    '''Capitalises the first letter within a string which comes after ". ", "!  ", or "? "'''
    return re.sub('(\.\s\w)|(\?\s\w)|(!\s\w)', lambda x: x.group().upper(), line)

with open("_data/WomenInTechnologySpotlight/captions.vtt", 'r') as fp:
    lines_import = fp.readlines()
    print('Initial length:', len(lines_import))

lines0 = lines_import[3:] # removing the first three lines
print("Length after removing header:", len(lines0))

new_lines_timestamps = "(^\n$)|(^\d{2}:\d{2}:\d{2}\.\d{3} --> \d{2}:\d{2}:\d{2}.\d{3}\n$)"
lines1 = rmv_matching_lines(lines0, new_lines_timestamps)
print("Length after removing new lines and timestamps:", len(lines1))

lines2 = rmv_nbsp(lines1)
print("Length after removing nbsp", len(lines2))

line3 = merge_lines(lines2)
print("Character length after joining into one line:", len(line3))

line4 = rmv_ums(line3)
print('Character length after removing "um"s:', len(line4))

replacements = {"jillian" : "Jillian",
                "augustine" : "Augustine",
                " i " : " I ",
                "i'" : "I'",
                " uk " : " UK ",
                "vienna" : "Vienna",
                "grenada" : "Grenada",
                "caribbean" : "Caribbean",
                "austria" : "Austria",
                "mcgill" : "McGill",
                "canada" : "Canada",
                "europe" : "Europe",
                "leeds" : "Leeds",
                "london" : "London",
                "coventry" : "Coventry",
                "german" : "German",
                "french" : "French",
                "i.t" : "I.T.",
                "a tea" : "I.T",
                "yelena" : "Jelena",
                "milosevic" : "Milošević"
            }

line5 = line4
for k, v in replacements.items():
    line5 = line5.replace(k, v)

# dirty fix because some corrections cause other issues
for k, v in replacements.items():
    line5 = line5.replace(k, v)

with open("_data/WomenInTechnologySpotlight/captions_oneline.vtt", 'w') as fp:
    fp.writelines(line5)

# copied to a file called captions_manuallyedited.vtt and edited in a text editor

with open("_data/WomenInTechnologySpotlight/captions_manuallyedited.vtt", 'r') as fp:
    edited0 = fp.readlines()

any([re.search('^\s*$', line) for line in edited0]) # there are no empty lines only

edited1 = edited0
for i, line in enumerate(edited0):
    line = capitalise_within(line)
    # capitalise first letter
    line = line[0].upper() + line[1:]
    if i == 0:
        prefix = 'Ronke Babajide: '
    elif i == 1:
        prefix = 'Jillian Augustine: '
    elif i % 2 == 0:
        prefix = 'RB: '
    elif i % 2 == 1:
        prefix = 'JA: '
    else:
        ValueError
    edited1[i] = prefix + line + '\n'

with open("assets/txt/wits2021_transcript.txt", 'w') as fp:
    fp.writelines(edited1)


