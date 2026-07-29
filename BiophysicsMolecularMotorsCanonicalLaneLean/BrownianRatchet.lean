import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure BrownianRatchetState where
  potentialWellDepth : ℝ
  diffusionConstant : ℝ
  ratchetAsymmetry : ℝ

structure BrownianRatchetPackage where
  state : BrownianRatchetState
  noiseAmplitude : ℝ
  discreteSteps : ℕ

structure BrownianRatchetEvidence (P : BrownianRatchetPackage) where
  potentialWellDepthClosed : P.state.potentialWellDepth > 0
  diffusionConstantClosed : P.state.diffusionConstant > 0
  ratchetAsymmetryClosed : P.state.ratchetAsymmetry ≠ 0

section

variable (P : BrownianRatchetPackage)

def BrownianRatchetClosed (P : BrownianRatchetPackage) : Prop :=
  P.state.potentialWellDepth > 0 ∧ P.state.diffusionConstant > 0 ∧
  P.state.ratchetAsymmetry ≠ 0

theorem brownian_ratchet_closed_from_evidence (E : BrownianRatchetEvidence P) :
    BrownianRatchetClosed P := by
  exact And.intro E.potentialWellDepthClosed
    (And.intro E.diffusionConstantClosed E.ratchetAsymmetryClosed)

end

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
