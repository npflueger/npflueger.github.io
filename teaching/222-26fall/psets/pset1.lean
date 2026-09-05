/- Math 222, Problem Set 1.
  Due *Friday* 11 September 2026.

  Resolve the sorries in the following Lean statements. 
  For now, you can just do this at live.lean-lang.org, and then save
  the file to your computer. Once I have the submission system working,
  I will announce how to submit your code.

  Please do not hesitate to ask me questions, or work with classmates!
  However, *do not use* generative AI to solve these problems. The
  important thing for now is to gain fluency with the basic syntax, 
  which you will gain by typing it yourself.

  **Save your work regularly.** There is a save button in the menu in the upper right.
  You can then load the code from your computer with the "load" button.
-/

import Mathlib

universe u

/- A set theory identity. This was our first example in class. You can look up
   the code I wrote on the screen in class on the Google Drive and use that as
   starting point. See if you can work out how to use the same key words for the
   converse direction. Do not hesitate to ask for help! -/

theorem set_distrib (A B C : Set u) :
  A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C) := by
  sorry

/- Equations. These are the exercises from Section 1.3 of the textbook. -/

example {x y : ℝ} (h1 : x = 3) (h2 : y = 4 * x - 3) : y = 9 :=
  sorry

example {a b : ℤ} (h : a - b = 0) : a = b :=
  sorry

example {x y : ℤ} (h1 : x - 3 * y = 5) (h2 : y = 3) : x = 14 :=
  sorry

example {p q : ℚ} (h1 : p - 2 * q = 1) (h2 : q = -1) : p = -1 :=
  sorry

example {x y : ℚ} (h1 : y + 1 = 3) (h2 : x + 2 * y = 3) : x = -1 :=
  sorry

example {p q : ℤ} (h1 : p + 4 * q = 1) (h2 : q - 1 = 2) : p = -11 :=
  sorry

example {a b c : ℝ} (h1 : a + 2 * b + 3 * c = 7) (h2 : b + 2 * c = 3)
    (h3 : c = 1) : a = 2 :=
  sorry

example {u v : ℚ} (h1 : 4 * u + v = 3) (h2 : v = 2) : u = 1 / 4 :=
  sorry

example {c : ℚ} (h1 : 4 * c + 1 = 3 * c - 2) : c = -3 :=
  sorry

example {p : ℝ} (h1 : 5 * p - 3 = 3 * p + 1) : p = 2 :=
  sorry

example {x y : ℤ} (h1 : 2 * x + y = 4) (h2 : x + y = 1) : x = 3 :=
  sorry

example {a b : ℝ} (h1 : a + 2 * b = 4) (h2 : a - b = 1) : a = 2 :=
  sorry

example {u v : ℝ} (h1 : u + 1 = v) : u ^ 2 + 3 * u + 1 = v ^ 2 + v - 1 :=
  sorry

example {t : ℚ} (ht : t ^ 2 - 4 = 0) :
    t ^ 4 + 3 * t ^ 3 - 3 * t ^ 2 - 2 * t - 2 = 10 * t + 2 :=
  sorry

example {x y : ℝ} (h1 : x + 3 = 5) (h2 : 2 * x - y * x = 0) : y = 2 :=
  sorry

example {p q r : ℚ} (h1 : p + q + r = 0) (h2 : p * q + p * r + q * r = 2) :
    p ^ 2 + q ^ 2 + r ^ 2 = -4 :=
  sorry

/- Inequalities. These are the exercises from Section 1.4 of the online textbook. -/

example {x y : ℤ} (h1 : x + 3 ≥ 2 * y) (h2 : 1 ≤ y) : x ≥ -1 :=
  sorry

example {a b : ℚ} (h1 : 3 ≤ a) (h2 : a + 2 * b ≥ 4) : a + b ≥ 3 :=
  sorry

example {x : ℤ} (hx : x ≥ 9) : x ^ 3 - 8 * x ^ 2 + 2 * x ≥ 3 :=
  sorry

example {n : ℤ} (hn : n ≥ 10) : n ^ 4 - 2 * n ^ 2 > 3 * n ^ 3 :=
  sorry

example {n : ℤ} (h1 : n ≥ 5) : n ^ 2 - 2 * n + 3 > 14 :=
  sorry

example {x : ℚ} : x ^ 2 - 2 * x ≥ -1 :=
  sorry

example (a b : ℝ) : a ^ 2 + b ^ 2 ≥ 2 * a * b :=
  sorry
