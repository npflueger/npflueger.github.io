---
title: "Math 252, spring 2022"
coursenum: "Math 252"
coursename: "Mathematics of Public-Key Cryptography"
permalink: /teaching/252-22spring/
startdate: 2022-01
semester: "Spring 2022"
toc: true
---

This course concerns the mathematical problems underlying public-key ciphers and digital signatures, as well as algorithms to solve them. Topics include discrete logarithms, integer factorization, elliptic curves, and lattices. These topics provide an appealing introduction to several topics in number theory, abstract algebra, and algorithms.

The course is designed for students with no prior experience in abstract algebra or programming. It serves as an introduction to those topics, meant to prepare students for more advanced courses. Students with prior experience are welcome, however.

You can find materials from previous offerings of this course here: [2020](../252-20spring), [2019](../252-19spring), [2016](../158-16fall), [2015](../158-15fall). The 2015 and 2016 courses, taught at Brown, were sligtly different in style and emphasis.

### Time and location
* Monday, Tuesday, Wednesday, and Friday: 3:00-3:50pm in **SMUD 205**.
* See Moodle page for the Zoom link during the first week.

### Help hours

{% include helphours.md %}

### Handouts

*   [Syllabus](handouts/syllabus.pdf)
*   Boardwork from the my tablet can be found at this [Dropbox link](https://www.dropbox.com/sh/p2yvkx1dcvqcox9/AABVgRPbvZrYANjIJufgNz3wa?dl=0).
*   Desmos demo on [elliptic curve addition](https://www.desmos.com/calculator/7vbyq3frjp)
*   Desmos demo on [associativity of EC addition](https://www.desmos.com/calculator/4q0rq6oxxt)
<!--handouts-->

### Textbook and other links

*   The course text is [An Introduction to Mathematical Cryptography](https://link.springer.com/book/10.1007/978-1-4939-1711-2), 2nd edition. Use this link to download the book in pdf for free or order a $25 paperback copy. If you are off the campus network, try [this link](https://link.springer.com.ezproxy.amherst.edu/book/10.1007/978-1-4939-1711-2), or look up "springerlink" (one word) in the Amherst College library catalog.
*   [Starter code and testing notebooks](https://www.dropbox.com/sh/a11zuil8bm8lylb/AABoeXEln6uR4vmnG-O9outza?dl=0) 
*   [CS Circles python tutorial](https://cscircles.cemc.uwaterloo.ca/) (most relevant sections for our purposes: 0 through 10 and 13, except 2X, 7A, and 8)


### Homework

Problem sets will be posted here. All problem sets are due at 10pm, on Gradescope.

* [Gradescope submission information](handouts/gsinfo.pdf) for all written assignments.
* [PSet 1](psets/pset1.pdf). Due Wednesday 2/16 (written part), and Friday 2/18 (code) at 10pm on Gradescope. 
* [PSet 2](psets/pset2.pdf). Due Wednesday 2/23 (both written and code).
* [PSet 3](psets/pset3.pdf). Due ~~Wednesday 3/2~~ Friday 3/4.
* [PSet 4](psets/pset4.pdf). Due Wednesday 3/9. 
* (No problem set the week 3/21-25, due to Midterm 1)
* [PSet 5](psets/pset5.pdf). Due **Friday** 4/1.
* [PSet 6](psets/pset6.pdf). Due Wednesday 4/6.
* [PSet 7](psets/pset7.pdf). Due Wednesday 4/13.
* [PSet 8](psets/pset8.pdf). Due Wednesday 4/20.
* [PSet 9](psets/pset9.pdf). Due Wednesday 4/27.
* [PSet 10](psets/pset10.pdf) (now complete). Due Friday 5/13.
<!--psets-->

### Exams

* Midterm 1 will be on Friday 3/25 in class.
    * [Exam](https://moodle.amherst.edu/pluginfile.php/912526/mod_resource/content/1/midterm1compact.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/912525/mod_resource/content/1/midterm1-soln.pdf)
    * Remember to make a one-page note-sheet (front and back)! Tables 2.2 and 2.3 from the textbook (summary of Diffie-Hellman and Elgamal) will be included in the exam packet, so you do not need to copy any of that information to your note sheet.
    * Coverage: anything discussed in class up to Friday 3/11. This includes the following textbook sections: 1.2, 1.3, 1.4, 1.5, 2.1, 2.2, 2.3, 2.4, 2.6, 2.7.
    * Some old exams, for review. Note that coverage and emphasis differs on these exams, and in particular the 2015 and 2016 exams are somewhat more difficult that ours is likely to be.
        * [2020 midterm 1](exams/midterm1-2020.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/911249/mod_resource/content/1/midterm1soln.pdf)
        * [2019 midterm 1](exams/midterm1-2019.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/911250/mod_resource/content/1/midterm1soln.pdf)
        * [2016 midterm 1](exams/midterm1-2016.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/911251/mod_resource/content/1/midterm1soln.pdf)
        * [2015 midterm 1](exams/midterm1-2015.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/911252/mod_resource/content/1/midterm1soln.pdf)

* Midterm 2 will be Wednesday 5/4 in class.
    * [Exam](https://moodle.amherst.edu/pluginfile.php/922648/mod_resource/content/1/midterm2compact.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/922649/mod_resource/content/1/midterm2soln.pdf)
    * Remember to make a one-page note-sheet (front and back)! Summary tables for all cryptosystems we've studied will be included in the exam packet, so you do not need to copy any of that information to your note sheet.
    * Coverage: anything discussed in class between Monday 3/14 and Wednesday 4/27. This includes the following textbook sections: 2.8-9, 3.1-4, 4.1-3, 6.1-4.
    * Some old exams, for review. Note that coverage and emphasis differs on these exams, and in particular the 2015 and 2016 exams are somewhat more difficult that ours is likely to be. **The 2015 and 2016 exams were earlier in the semester than our midterm 2, so they do not include content on elliptic curves.** Solutions will be posted early next week.
        * [2015 midterm 2](exams/midterm2practice/midterm2-2015.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/920929/mod_resource/content/1/midterm2-2015soln.pdf)
        * [2016 midterm 2](exams/midterm2practice/midterm2-2016.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/920930/mod_resource/content/1/midterm2-2016soln.pdf)
        * [2019 midterm 2](exams/midterm2practice/midterm2-2019.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/920931/mod_resource/content/1/midterm2-2019soln.pdf)
    * Some old final exams. You may wish to consult these for problems about elliptic curves.
        * [2015 final exam](exams/midterm2practice/final-2015.pdf) (problems 1, 4, 6, 9, 11 concern elliptic curves) / [Solutions](https://moodle.amherst.edu/pluginfile.php/920932/mod_resource/content/1/final-2015soln.pdf)
        * [2016 final exam](exams/midterm2practice/final-2016.pdf) (problems 3, 6, 10 concern elliptic curves) / [Solutions](https://moodle.amherst.edu/pluginfile.php/920933/mod_resource/content/1/final-2016soln.pdf)
        * [2019 final exam](exams/midterm2practice/final-2019.pdf) (problem 2 concerns elliptic curves) / [Solutions](https://moodle.amherst.edu/pluginfile.php/920934/mod_resource/content/1/final-2019soln.pdf)


* The final exam will be Monday 5/23, 2-5pm in SMUD 014.
    * Remember to make a one-page note-sheet (front and back)! Summary tables for all cryptosystems we've studied will be included in the exam packet, so you do not need to copy any of that information to your note sheet.
    * Coverage: cumulative, up to class on Tuesday 5/10. In particular, the last two class meetings, about lattice reduction to attack NTRU, will not appear on the exam. The material after Midterm 2 will have slightly higher weight, since it has not yet been covered on an exam.
    * Some old final exams are linked above, under Midterm 2 materials.
    * [Exam](https://moodle.amherst.edu/pluginfile.php/925595/mod_resource/content/1/finalcompact.pdf) / [Solutions](https://moodle.amherst.edu/pluginfile.php/925596/mod_resource/content/1/finalExamSoln.pdf)
