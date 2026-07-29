import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MolecularMotorModel

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure BrownianRatchetPackage where
  freeEnergyProfile : Prop
  thermalFluctuations : Prop
  rectifiedMotion : Prop
  loadDependentVelocity : Prop

structure BrownianRatchetEvidence (B : BrownianRatchetPackage) where
  freeEnergyProfileClosed : B.freeEnergyProfile
  thermalFluctuationsClosed : B.thermalFluctuations
  rectifiedMotionClosed : B.rectifiedMotion
  loadDependentVelocityClosed : B.loadDependentVelocity

def BrownianRatchetClosed (B : BrownianRatchetPackage) : Prop :=
  B.freeEnergyProfile ∧ B.thermalFluctuations ∧
  B.rectifiedMotion ∧ B.loadDependentVelocity

theorem brownian_ratchet_closed_from_evidence (B : BrownianRatchetPackage)
    (E : BrownianRatchetEvidence B) : BrownianRatchetClosed B := by
  exact And.intro E.freeEnergyProfileClosed
    (And.intro E.thermalFluctuationsClosed
      (And.intro E.rectifiedMotionClosed E.loadDependentVelocityClosed))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
