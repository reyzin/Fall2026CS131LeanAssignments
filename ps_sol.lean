import Mathlib.Basic.Logic.Basic

-- This file contains problems for Problem Set 2 for CS131
-- This contains 2 problems that needs to be completed using Lean.
-- This file must be submitted by Monday September 21, 2026 at 11:59pm,
-- on Gradescope.

-- This set of problems focuses on propositional logic.
-- You can use the theorems listed below for the homework.

-- First, we write and prove for you a few
-- laws that lean does not have in the form
-- we want.


-- Lean's default not_not syntax
-- is a bit strange, and this translates it
-- into syntax you can use more easily
theorem double_not (p: Prop): ¬¬p ↔ p := by
  rewrite[not_not]
  rfl

-- We prove the two complement laws for ∨
-- (lean doesn't have these rules built in, so we prove them
-- via a very similar "excluded middle" rule called em)
theorem or_not_self_iff (p: Prop): p ∨ ¬p ↔ True:= by
  rewrite[eq_true (em p)]
  rfl

theorem not_or_self_iff (p: Prop): ¬p ∨ p ↔ True:= by
  rewrite[or_comm]
  rewrite[eq_true (em p)]
  rfl


-- Idempotent
#check or_self
#check and_self

-- Associative
#check or_assoc
#check and_assoc

-- Commutative
#check or_comm
#check and_comm

-- Distributive
#check or_and_left
#check and_or_left
#check and_or_right
#check or_and_right

-- Identity
#check or_false
#check false_or
#check and_true
#check true_and

-- Domination
#check and_false
#check or_true

-- Double negation
#check double_not

-- Complement
#check and_not_self_iff
#check not_and_self_iff
#check or_not_self_iff
#check not_or_self_iff

-- De Morgan's
#check not_or
#check not_and_or

-- Conditional Identity
#check imp_iff_not_or


-- *****************Problem 1**************
-- mirror your written proof steps in lean
-- This problem is worth 10 points
-- You may use rewrite (or nth_rewrite) with the theorems listed above
-- and rfl ONLY for this proof
--@[autogradedProof 10]
theorem problem_5c (a b c : Prop) : ((a → (¬ b ∨ ¬ c)) ∧ c) = (¬ (a ∧ b) ∧ c) := by
  sorry

-- *****************Problem 2**************
-- mirror your written proof steps in lean
-- This problem is worth 10 points
-- *** You must begin your proof with intro ***
-- In addition to the tactics allowed in the previous
-- problem, you may use intro, obtain, and exact for this proof
--@[autogradedProof 10]
theorem problem_5d (p q: Prop): ((p→q) ∧ p) → q := by
  sorry
