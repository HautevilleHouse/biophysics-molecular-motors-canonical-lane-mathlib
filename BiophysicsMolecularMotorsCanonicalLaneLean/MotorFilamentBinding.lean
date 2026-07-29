import canonicalLaneMathlib.AdmissibleClass

/-!
# Motor–Filament Binding Package
-/

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorFilamentBindingPackage where
  bindingRate : ℝ
  unbindingRate : ℝ
  bindingSiteDensity : ℝ
  attachmentDuration : Prop

structure MotorFilamentBindingEvidence (B : MotorFilamentBindingPackage) where
  bindingRateClosed : B.bindingRate > 0
  unbindingRateClosed : B.unbindingRate > 0
  bindingSiteDensityClosed : B.bindingSiteDensity > 0
  attachmentDurationClosed : B.attachmentDuration

def MotorFilamentBindingClosed (B : MotorFilamentBindingPackage) : Prop :=
  B.bindingRate > 0 ∧ B.unbindingRate > 0 ∧ B.bindingSiteDensity > 0 ∧ B.attachmentDuration

theorem motor_filament_binding_closed_from_evidence
    (B : MotorFilamentBindingPackage) (E : MotorFilamentBindingEvidence B) :
    MotorFilamentBindingClosed B := by
  exact And.intro E.bindingRateClosed
    (And.intro E.unbindingRateClosed
      (And.intro E.bindingSiteDensityClosed E.attachmentDurationClosed))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
