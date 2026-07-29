import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MotorProteinStructure

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure ATPaseCycleKinetics {M : MotorProteinStructure} where
  atpBindingRate : ℝ
  hydrolysisRate : ℝ
  piReleaseRate : ℝ
  adpReleaseRate : ℝ
  stepSizePerATP : ℝ
  dutyRatio : ℝ
  atpBindingMeasured : Prop
  hydrolysisMeasured : Prop
  piReleaseMeasured : Prop
  adpReleaseMeasured : Prop
  stepSizeMeasured : Prop
  dutyRatioMeasured : Prop
  atpBindingMeasuredTerm : atpBindingMeasured
  hydrolysisMeasuredTerm : hydrolysisMeasured
  piReleaseMeasuredTerm : piReleaseMeasured
  adpReleaseMeasuredTerm : adpReleaseMeasured
  stepSizeMeasuredTerm : stepSizeMeasured
  dutyRatioMeasuredTerm : dutyRatioMeasured

structure ATPaseCycleEvidence {M : MotorProteinStructure} (K : ATPaseCycleKinetics M) where
  atpBindingClosed : K.atpBindingMeasured
  hydrolysisClosed : K.hydrolysisMeasured
  piReleaseClosed : K.piReleaseMeasured
  adpReleaseClosed : K.adpReleaseMeasured
  stepSizeClosed : K.stepSizeMeasured
  dutyRatioClosed : K.dutyRatioMeasured

def ATPaseCycleClosed {M : MotorProteinStructure} (K : ATPaseCycleKinetics M) : Prop :=
  K.atpBindingMeasured ∧ K.hydrolysisMeasured ∧ K.piReleaseMeasured ∧
  K.adpReleaseMeasured ∧ K.stepSizeMeasured ∧ K.dutyRatioMeasured

theorem atpase_cycle_closed_from_evidence {M : MotorProteinStructure} (K : ATPaseCycleKinetics M) (E : ATPaseCycleEvidence K) :
    ATPaseCycleClosed K := by
  exact And.intro E.atpBindingClosed
    (And.intro E.hydrolysisClosed
      (And.intro E.piReleaseClosed
        (And.intro E.adpReleaseClosed
          (And.intro E.stepSizeClosed E.dutyRatioClosed))))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse