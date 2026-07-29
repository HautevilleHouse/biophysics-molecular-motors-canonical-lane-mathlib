import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorSteppingPackage where
  stepSize : Prop
  stepDuration : Prop
  dwellTimeDistribution : Prop
  detachmentProbability : Prop
  handOverHandAlternation : Prop
  inchwormMechanism : Prop
  stepSizeDetermined : Prop
  dwellTimeExponential : Prop
  coordinationBetweenHeads : Prop

structure MotorSteppingEvidence (M : MotorSteppingPackage) where
  stepSizeClosed : M.stepSize
  stepDurationClosed : M.stepDuration
  dwellTimeDistributionClosed : M.dwellTimeDistribution
  detachmentProbabilityClosed : M.detachmentProbability

def MotorSteppingClosed (M : MotorSteppingPackage) : Prop :=
  M.stepSize ∧ M.stepDuration ∧ M.dwellTimeDistribution ∧ M.detachmentProbability

theorem motor_stepping_closed_from_evidence (M : MotorSteppingPackage) (E : MotorSteppingEvidence M) : MotorSteppingClosed M := by
  exact And.intro E.stepSizeClosed (And.intro E.stepDurationClosed (And.intro E.dwellTimeDistributionClosed E.detachmentProbabilityClosed))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse