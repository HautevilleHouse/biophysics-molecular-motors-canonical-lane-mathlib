import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MolecularMotorModel

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MyosinActinCyclePackage where
  actinBinding : Prop
  powerStroke : Prop
  adpRelease : Prop
  rigorState : Prop
  atpInducedDetachment : Prop
  leverArmSwing : Prop

structure MyosinActinCycleEvidence (M : MyosinActinCyclePackage) where
  actinBindingClosed : M.actinBinding
  powerStrokeClosed : M.powerStroke
  adpReleaseClosed : M.adpRelease
  rigorStateClosed : M.rigorState
  atpInducedDetachmentClosed : M.atpInducedDetachment
  leverArmSwingClosed : M.leverArmSwing

def MyosinActinCycleClosed (M : MyosinActinCyclePackage) : Prop :=
  M.actinBinding ∧ M.powerStroke ∧
  M.adpRelease ∧ M.rigorState ∧
  M.atpInducedDetachment ∧ M.leverArmSwing

theorem myosin_actin_cycle_closed_from_evidence (M : MyosinActinCyclePackage)
    (E : MyosinActinCycleEvidence M) : MyosinActinCycleClosed M := by
  exact And.intro E.actinBindingClosed
    (And.intro E.powerStrokeClosed
      (And.intro E.adpReleaseClosed
        (And.intro E.rigorStateClosed
          (And.intro E.atpInducedDetachmentClosed E.leverArmSwingClosed))))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
