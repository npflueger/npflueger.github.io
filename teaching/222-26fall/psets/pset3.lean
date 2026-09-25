import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring


-- Problems about Odd and Even, with some ∀ and ↔ sprinkled in

lemma ex_1 : Odd (-9) := by
  sorry

lemma ex_2 : Even 26 := by
  sorry

lemma ex_3 {a b : ℤ} (ha : Even a) (hb : Odd b) : Even (3 * a + b - 3) := by
  sorry

lemma ex_4 {n : ℤ} (hn : Odd n) : Even (n ^ 2 - 3 * n + 2) := by
  sorry

-- This one is long and involves some casework. Try working it out on paper first.
lemma ex_5 : ∀ m n : ℤ, Even (m+n) ↔ (Even m ∧ Even n) ∨ (Odd m ∧ Odd n) := by
  sorry

-- Try some casework in this one, too
lemma ex_6 (a b c : ℤ) : Even (a - b) ∨ Even (a + c) ∨ Even (b - c) := by
  sorry


--- Some problems about divisibility

lemma ex_7 : ∀ t : ℤ, t ∣ 0 := by
  sorry

example {p q r : ℤ} (hpq : p ^ 3 ∣ q) (hqr : q ^ 2 ∣ r) : p ^ 6 ∣ r := by
  sorry


lemma ex_9 : ∀ n : ℤ, Odd n → 4 ∣ (n^2 - 1) := by
  sorry

lemma ex_10 : ∃ n : ℕ, 0 < n ∧ 9 ∣ 2 ^ n - 1 := by
  sorry

-- Some problems involving iff statements

lemma ex_11 {x : ℝ} : 2 * x - 1 = 11 ↔ x = 6 := by
  sorry

-- This is closely related to an example done in class.
-- It is fine to paste in that code to solve this problem.
lemma ex_12 : ∀ m n : ℤ, Even (m*n) ↔ Even m ∨ Even n := by
  sorry
