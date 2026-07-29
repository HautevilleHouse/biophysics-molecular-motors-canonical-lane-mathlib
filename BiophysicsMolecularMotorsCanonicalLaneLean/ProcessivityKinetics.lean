import canonicalLaneMathlib.AdmissibleClass

/-!
# Processivity Kinetics Package
-/

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure ProcessivityKineticsPackage where
  stepSize : ℝ
  runLength : ℝ
  dwellTimeDistribution : ℝ → ℝ
  detachmentProbability : ℝ

structure ProcessivityKineticsEvidence (P : ProcessivityKineticsPackage) where
  stepSizeClosed : P.stepSize > 0
  runLengthClosed : P.runLength > 0
  dwellTimeDistributionClosed : ∀ t : ℝ, t ≥ 0 → P.dwellTimeDistribution t ≥ 0
  detachmentProbabilityClosed : 0 < P.detachmentProbability ∧ P.detachmentProbability < 1

def ProcessivityKineticsClosed (P : ProcessivityKineticsPackage) : Prop :=
  P.stepSize > 0 ∧ P.runLength > 0 ∧ (∀ t : ℝ, t ≥ 0 → P.dwellTimeDistribution t ≥ 0) ∧ 0 < P.detachmentProbability ∧ P.detachmentProbability < 1

theorem processivity_kinetics_closed_from_evidence
    (P : ProcessivityKineticsPackage) (E : ProcessivityKineticsEvidence P) :
    ProcessivityKineticsClosed P := by
  exact And.intro E.stepSizeClosed
    (And.intro E.runLengthClosed
      (And.intro E.dwellTimeDistributionClosed
        (And.intro E.detachmentProbabilityClosed.1 E.detachmentProbabilityClosed.2)))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
