import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MolecularMotorModel

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure KinesinCyclePackage where
  atpBinding : Prop
  conformationalChange : Prop
  powerStroke : Prop
  productRelease : Prop
  detachment : Prop
  steppingRatio : Prop

structure KinesinCycleEvidence (K : KinesinCyclePackage) where
  atpBindingClosed : K.atpBinding
  conformationalChangeClosed : K.conformationalChange
  powerStrokeClosed : K.powerStroke
  productReleaseClosed : K.productRelease
  detachmentClosed : K.detachment
  steppingRatioClosed : K.steppingRatio

def KinesinCycleClosed (K : KinesinCyclePackage) : Prop :=
  K.atpBinding ∧ K.conformationalChange ∧
  K.powerStroke ∧ K.productRelease ∧
  K.detachment ∧ K.steppingRatio

theorem kinesin_cycle_closed_from_evidence (K : KinesinCyclePackage)
    (E : KinesinCycleEvidence K) : KinesinCycleClosed K := by
  exact And.intro E.atpBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.powerStrokeClosed
        (And.intro E.productReleaseClosed
          (And.intro E.detachmentClosed E.steppingRatioClosed))))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
