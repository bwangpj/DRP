import Mathlib

#check PSet

universe u

variable (𝔹 : Type u) [CompleteBooleanAlgebra 𝔹]

/- A 𝔹-valued model of ZFC -/

-- τ is a B-name if and only if τ is a set of pairs of the form ⟨σ, b⟩, where σ is
-- a B-name and b ∈ B.
inductive BSet : Type (u+1)
| mk (α : Type u) (A : α → BSet) (B : α → 𝔹) : BSet
