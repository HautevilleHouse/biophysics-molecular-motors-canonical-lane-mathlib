import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MotorProteinStructure

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure CatchBondMechanics {M : MotorProteinStructure} where
  actinBindingUnstressed : ℝ
  actinBindingStressed : ℝ
  forceDependentOffRate : ℝ → ℝ
  catchBondRange : ℝ × ℝ
  catchBondObserved : Prop
  slipBondObserved : Prop
  forceDependenceMeasured : Prop
  catchBondObservedTerm : catchBondObserved
  slipBondObservedTerm : slipBondObserved
  forceDependenceMeasuredTerm : forceDependenceMeasured

structure CatchBondEvidence {M : MotorProteinStructure} (C : CatchBondMechanics M) where
  catchBondClosed : C.catchBondObserved
  slipBondClosed : C.slipBondObserved
  forceDependenceClosed : C.forceDependenceMeasured

def CatchBondClosed {M : MotorProteinStructure} (C : CatchBondMechanics M) : Prop :=
  C.catchBondObserved ∧ C.slipBondObserved ∧ C.forceDependenceMeasured

theorem catch_bond_closed_from_evidence {M : MotorProteinStructure} (C : CatchBondMechanics M) (E : CatchBondEvidence C) :
    CatchBondClosed C := by
  exact And.intro E.catchBondClosed
    (And.intro E.slipBondClosed E.forceDependenceClosed)

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse