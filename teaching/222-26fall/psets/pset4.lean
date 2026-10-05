import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/- Problems about negation and contradiction -/

-- Based on Example 4.5.4
lemma ex_1 : ¬ ∃ n : ℕ, n^2 = 13 := by
  sorry

lemma ex_2  : ¬ Even (1:ℤ) := by
  -- We did this one in class.
  -- Try to redo it yourself for practice,
  -- but it's okay to check the file on the shared drive if you're stuck.
  sorry

lemma ex_3 : ∀ n : ℤ, Odd n → ¬ Even n := by
  -- This one can be done fast with library theorems.
  -- See if you can do it using ex_1, though.
  sorry

lemma ex_4 : ∀ n : ℤ, ¬ 4 ∣ (n^2 - 3) := by
  -- Hint for this one: do casework based on whether n is odd or even.
  sorry

-- From §4.5.10
lemma ex_5 : ¬ (∃ a : ℝ, a ^ 2 ≤ 8 ∧ a ^ 3 ≥ 30) := by
  sorry

lemma ex_6 {x : ℝ} (hx : x ^ 2 < 9) : ¬ (x ≤ -3 ∨ x ≥ 3) := by
  sorry

/- Problems about induction -/

-- From §6.1.7
lemma ex_7 (n : ℕ) : 3 ^ n ≥ n ^ 2 + n + 1 := by
  induction' n with n hn
  · -- Base case : n = 0
    norm_num
  · -- Inductive step
    sorry

-- From §6.1.6
def S : ℕ → ℚ
  | 0 => 1
  | n + 1 => S n + 1 / 2 ^ (n + 1)

lemma ex_8 (n : ℕ) : S n = 2 - 1 / 2 ^ n := by
  sorry

/- NOTE: A couple more induction problems will be added after class on Tuesday 10/6 and/or Thursday 10/8. -/
