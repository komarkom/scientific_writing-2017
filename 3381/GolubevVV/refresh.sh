#!/bin/bash

convert() {
    in=$1
    out=$2
    pandoc -s $in -o $out || exit 1
    perl -pi -e 's/\\\n/\n\n/g' ${out}
}

build_paper() {
    echo "# Towards a flexible and reactive diagnostics tool for ROS." > paper.md
    echo "" >> paper.md
    echo "## Abstract" >> paper.md
    echo "" >> paper.md
    cat abstract.md >> paper.md
    echo "" >> paper.md
    echo "## Introduction" >> paper.md
    echo "" >> paper.md
    cat introduction.md >> paper.md
    echo "" >> paper.md
    echo "## Analogs" >> paper.md
    echo "" >> paper.md
    cat analogs.md >> paper.md
    echo "" >> paper.md
    echo "## Solution method selection" >> paper.md
    echo "" >> paper.md
    cat solution_method_selection.md >> paper.md
    echo "" >> paper.md
    echo "## Solution method description" >> paper.md
    echo "" >> paper.md
    cat solution_method_description.md >> paper.md
    echo "" >> paper.md
    echo "## Conclusions" >> paper.md
    echo "" >> paper.md
    cat conclusions.md >> paper.md
    echo "" >> paper.md

    perl -p00i -e 's/(.*)\n[-]+\n/### $1\n/g' paper.md
}

git add paper/ && git commit -m "Update paper submodule."

cp paper/main.tex paper.tex || exit 1
cp paper/main.pdf paper.pdf || exit 1
git add paper.tex paper.pdf && git commit -m "Refresh .pdf and root .tex."

convert paper/abstract.tex abstract.md
convert paper/introduction.tex introduction.md
convert paper/alternatives.tex analogs.md
convert paper/requirements.tex solution_method_selection.md
convert paper/implementation.tex solution_method_description.md
convert paper/conclusion.tex conclusions.md

build_paper

git status
