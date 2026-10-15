import Mathlib.Data.Real.Basic
import Mathlib.Tactic


/-
  The following is a basic definition of a *full binary tree* in Lean,
  and functions to count the number of leaves and internal nodes.
  It it used in Exercise 1. You don't need to modify it.
  -/

inductive BTree where
  | Leaf : BTree
  | Internal : BTree → BTree → BTree

def num_leaves (T : BTree) : ℕ :=
  match T with
  | .Leaf => 1
  | .Internal T₁ T₂ => num_leaves T₁ + num_leaves T₂

def num_internal (T : BTree) : ℕ :=
  match T with
  | .Leaf => 0
  | .Internal T₁ T₂ => 1 + num_internal T₁ + num_internal T₂

/-- The following exercise let's you try working with this binary tree structure.
    See if you can figure out how to use the structure to complete the proof from class.
    Ask questions if you are stuck! -/
lemma ex_1 (T : BTree) : num_leaves T = num_internal T + 1 := by
  match T with
  | .Leaf =>
    sorry
  | .Internal T₁ T₂ =>
    sorry

/-- The following is the main algebra step in the second proof from class that √2 ∉ ℚ. -/
lemma ex_2 {m n : ℤ} (h : m^2 = 2 * n^2) : (2*n-m)^2 = 2*(m-n)^2 := by
  sorry

/-- The following is another way of phrasing the irrationality of √2. See if you can fill it in
    from the stencil provided. There is some new syntax here -- in this proof by strong induction,
    Lean wants you to explicitly prove that the quantity |n| is actually *decreasing* in your
    inductive step. Study the syntax to see if you understand how it works. Then fill in the sorries
    to complete the rpoof. -/
lemma ex_3 {m n : ℤ} (h : m^2 = 2 * n^2) (hn : n ≥ 0) (hm : m ≥ 0) : n = 0 := by
  by_contra! n_nonzero
  have hn0 : n > 0 := by
    sorry
  have hmn : m - n ≥ 0 := by
    sorry
  have hm2n : 2*n-m ≥ 0 := by
    sorry
  have h' : (2*n-m)^2 = 2 * (m-n)^2 := by
    sorry
  -- Here comes the inductive hypothesis!
  have : m - n = 0 := ex_3 h' hmn hm2n
  -- Now complete the proof using that inductive hypothesis.
  sorry
-- This next block tells Lean what you're inducting on, i.e. what is "shrinking."
termination_by n.natAbs
decreasing_by
    -- Now Lean wants you to prove that it is actually shriking.
    -- Dealing with n.natAbs is a bit finicky; this "suffices" line gets you into more familiar territory.
    suffices m - n < n by omega
    -- Now try to complete the proof that the induction quantity is decreasing.
    sorry

/-- The following exercise is teh same as ex_3, except that the hypotheses n ≥ 0 and m ≥ 0 are dropped.
    The provided stencil provides a neat bit of syntax to deal with this: the "without loss of generality" tactic.
    Take a look at the "sorries" in the infoview, and see if you understand how to use this tactic.
    It is a good one to have in your toolkit! --/
lemma ex_4 {m n : ℤ} (h : m^2 = 2 * n^2) : n = 0 := by
  wlog hn : n ≥ 0
  · have h' : m^2 = 2 * (-n)^2 := by
      calc
        m^2 = 2 * n^2 := h
        _ = 2 * (-n)^2 := by ring
    specialize this h'
    sorry
  -- Now you get to assume that n ≥ 0, just like in ex_3! Now try it with m.
  wlog hm : m ≥ 0
  · sorry
  -- Now finish the proof by invoking ex_3 (you can assume it's proved even if you still have sorries above)
  sorry

/-- The following exercise is quite similar to ex_3. In effect, it shows no rational numbers m/n
    can solve x = 1 + 1/x. One solution to that is the golden ratio φ, so we're proving that φ ∉ ℚ .
    You can follow the same method as ex_3, but the stencil isn't provided this time. See if you
    can fill it in. -/
lemma ex_5 {m n : ℤ} (h : m^2 = m*n + n^2) (hn : n ≥ 0 ) (hm : m ≥ 0) : n = 0 := by
  sorry

/-- Now see if you can remove the n ≥ 0 and m ≥ hypotheses, e.g. by using wlog to reduce to ex_5. -/
lemma ex_6 {m n : ℤ} (h : m^2 = m*n + n^2) : n = 0 := by
  sorry
