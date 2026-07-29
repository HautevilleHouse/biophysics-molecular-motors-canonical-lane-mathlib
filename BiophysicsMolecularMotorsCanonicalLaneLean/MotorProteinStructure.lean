import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorProteinStructure where
  headDomain : Type u
  stalkDomain : Type v
  tailDomain : Type w
  nucleotideBindingSite : Prop
  actinBindingSite : Prop
  headTailLinker : Prop
  stalkFlexibility : Prop
  catalyticCore : Prop
  leverArmPresent : Prop
  nucleotideBindingSiteTerm : nucleotideBindingSite
  actinBindingSiteTerm : actinBindingSite
  headTailLinkerTerm : headTailLinker
  stalkFlexibilityTerm : stalkFlexibility
  catalyticCoreTerm : catalyticCore
  leverArmPresentTerm : leverArmPresent

structure MotorProteinEvidence (M : MotorProteinStructure) where
  nucleotideBindingSiteClosed : M.nucleotideBindingSite
  actinBindingSiteClosed : M.actinBindingSite
  headTailLinkerClosed : M.headTailLinker
  stalkFlexibilityClosed : M.stalkFlexibility
  catalyticCoreClosed : M.catalyticCore
  leverArmPresentClosed : M.leverArmPresent

def MotorProteinClosed (M : MotorProteinStructure) : Prop :=
  M.nucleotideBindingSite ∧ M.actinBindingSite ∧ M.headTailLinker ∧
  M.stalkFlexibility ∧ M.catalyticCore ∧ M.leverArmPresent

theorem motor_protein_closed_from_evidence (M : MotorProteinStructure) (E : MotorProteinEvidence M) :
    MotorProteinClosed M := by
  exact And.intro E.nucleotideBindingSiteClosed
    (And.intro E.actinBindingSiteClosed
      (And.intro E.headTailLinkerClosed
        (And.intro E.stalkFlexibilityClosed
          (And.intro E.catalyticCoreClosed E.leverArmPresentClosed))))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse