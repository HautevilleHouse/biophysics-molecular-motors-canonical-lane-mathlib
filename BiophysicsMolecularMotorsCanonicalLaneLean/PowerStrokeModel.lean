import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure PowerStrokeAngle where
  leverArmLength : ℝ
  pivotOffset : ℝ
  strokeAngle : ℝ

structure PowerStrokePackage where
  angle : PowerStrokeAngle
  forceGenerated : ℝ
  energyConsumption : ℝ

structure PowerStrokeEvidence (P : PowerStrokePackage) where
  leverArmLengthClosed : P.angle.leverArmLength > 0
  strokeAngleClosed : P.angle.strokeAngle > 0 ∧ P.angle.strokeAngle < π
  forceGeneratedClosed : P.forceGenerated > 0

section

variable (P : PowerStrokePackage)

def PowerStrokeClosed (P : PowerStrokePackage) : Prop :=
  P.angle.leverArmLength > 0 ∧
  (P.angle.strokeAngle > 0 ∧ P.angle.strokeAngle < π) ∧
  P.forceGenerated > 0

theorem power_stroke_closed_from_evidence (E : PowerStrokeEvidence P) :
    PowerStrokeClosed P := by
  exact And.intro E.leverArmLengthClosed
    (And.intro E.strokeAngleClosed E.forceGeneratedClosed)

end

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
