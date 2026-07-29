import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MotorProteinStructure

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure ProcessivitySteppingModel {M : MotorProteinStructure} where
  stepSize : ℝ
  meanRunLength : ℝ
  velocity : ℝ
  stallForce : ℝ
  processivity : Prop
  handOverHand : Prop
  inchworm : Prop
  processivityMeasured : Prop
  handOverHandMeasured : Prop
  inchwormMeasured : Prop
  processivityMeasuredTerm : processivityMeasured
  handOverHandMeasuredTerm : handOverHandMeasured
  inchwormMeasuredTerm : inchwormMeasured

structure ProcessivityEvidence {M : MotorProteinStructure} (P : ProcessivitySteppingModel M) where
  processivityClosed : P.processivityMeasured
  handOverHandClosed : P.handOverHandMeasured
  inchwormClosed : P.inchwormMeasured

def ProcessivityClosed {M : MotorProteinStructure} (P : ProcessivitySteppingModel M) : Prop :=
  P.processivityMeasured ∧ P.handOverHandMeasured ∧ P.inchwormMeasured

theorem processivity_closed_from_evidence {M : MotorProteinStructure} (P : ProcessivitySteppingModel M) (E : ProcessivityEvidence P) :
    ProcessivityClosed P := by
  exact And.intro E.processivityClosed
    (And.intro E.handOverHandClosed E.inchwormClosed)

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse