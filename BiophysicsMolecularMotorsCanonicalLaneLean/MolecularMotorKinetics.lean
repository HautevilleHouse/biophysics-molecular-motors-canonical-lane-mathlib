import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MolecularMotorCargo where
  trackBindingRate : ℝ
  stepSize : ℕ
  stallForce : ℝ
  processivity : ℕ

structure MotorKineticsPackage where
  cargo : MolecularMotorCargo
  forwardRate : ℝ
  backwardRate : ℝ
  atpHydrolysisRate : ℝ
  loadDependence : ℝ → ℝ

structure MotorKineticsEvidence (P : MotorKineticsPackage) where
  forwardRateClosed : P.forwardRate > 0
  backwardRateClosed : P.backwardRate ≥ 0
  atpHydrolysisRateClosed : P.atpHydrolysisRate > 0

section

variable (P : MotorKineticsPackage)

def MotorKineticsClosed (P : MotorKineticsPackage) : Prop :=
  P.forwardRate > 0 ∧ P.backwardRate ≥ 0 ∧ P.atpHydrolysisRate > 0

theorem motor_kinetics_closed_from_evidence (E : MotorKineticsEvidence P) :
    MotorKineticsClosed P := by
  exact And.intro E.forwardRateClosed
    (And.intro E.backwardRateClosed E.atpHydrolysisRateClosed)

end

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
