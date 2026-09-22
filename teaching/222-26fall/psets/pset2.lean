import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

lemma ex_1 {x y : ℝ} (h : x = 2 ∨ y = -2) : x * y + 2 * x = 2 * y + 4 := by
  sorry

lemma ex_2 {s t : ℚ} (h : s = 3 - t) : s + t = 3 ∨ s + t = 5 := by
  sorry

lemma ex_3 {a b : ℝ} (hab : a ^ 2 + 2 * b ^ 2 = 3 * a * b) : a = b ∨ a = 2 * b := by
  sorry

lemma ex_4 {a b : ℝ} (h1 : a * b = a) (h2 : a * b = b) :
    a = 0 ∧ b = 0 ∨ a = 1 ∧ b = 1 := by
  sorry

lemma ex_5 : ∃ a b : ℕ, 2 ^ a = 5 * b + 1 := by
  sorry

lemma ex_6 (y : ℝ) (hy: ∃ x, x^2 - 4*x + 10 > y) : y > 6 := by
  sorry

lemma ex_7 (n : ℕ) : n^2 ≠ 3 := by
  sorry

lemma ex_8 {a b : ℝ} (h : a < b) : ∃ x : ℝ, a < x ∧ x < b := by
  sorry

/- In the proof below, there is a Mathlib theorem that readily
   supplies what you need. To discover it, try typing "apply?"
   and look in the infoview. -/
lemma zero_helper {x : ℝ} (hx : x^2 = 0) : x = 0 := by
  sorry

/- The stencil below shows how to break down an iff proof into
   its two implications. Check the infoview at each "sorry" to see
   What remains to be done.

   There is a lemma from class that is helpful -- you are free to
   paste it in this file to use in the proof. -/
theorem ex_10 (x y : ℝ) : x^2 + y^2 = 0 ↔ x = 0 ∧ y = 0 := by
    constructor
    · intro h
      sorry
    · intro h
      sorry

/- Now you try : use the same syntax to break up the iff in this theorem and prove it. -/
theorem ex_11 (x : ℝ) : x^2 + 3*x = 28 ↔ x = 4 ∨ x = - 7 := by
  sorry

/-- This is the definition of "sum of two squares" from class -/
def sots (n : ℤ) := ∃ a b : ℤ, n = a^2 + b^2

lemma ex_12 : sots 85 := by
  sorry

lemma ex_13 {n : ℤ} (hn : sots n) : sots (2*n) := by
  sorry
