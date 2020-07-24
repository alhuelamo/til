import glob
import re

files = sorted(glob.glob("**/*.md"))

template = """# Today I Learned

My TIL notes inspired by [simonw/til](https://github.com/simonw/til).

There are currently {nnotes} notes.

"""

topics = dict()
pattern = re.compile("^(.*)\/.*$")

for md in files:
    topic = pattern.findall(md)[0]
    with open(md, "r") as fp:
        title = fp.readline().lstrip("#").strip()
    topics.setdefault(topic, list()).append((title, md))

for topic in topics:
    template += f"## {topic}\n"

    for title, path in topics[topic]:
        template += f"* [{title}]({path})\n"

    template += "\n"

output = template.format(nnotes=len(files))

with open("README.md", "w") as fp:
    fp.write(output)
