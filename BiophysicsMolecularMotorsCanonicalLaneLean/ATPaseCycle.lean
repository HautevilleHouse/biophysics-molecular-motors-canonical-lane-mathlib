import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure ATPaseCyclePackage where
  atpHydrolysisRate : Prop
  adpReleaseRate : Prop
  atpBindingAffinity : Prop
  phosphateReleaseTiming : Prop
  chemicalToMechanicalCoupling : Prop
  hydrolysisFreeEnergy : Prop
  nucleotideBindingPocketConformation : Prop
  powerStrokeMechanism : Prop

structure ATPaseCycleEvidence (A : ATPaseCyclePackage) where
  atpHydrolysisRateClosed : A.atpHydrolysisRate
  adpReleaseRateClosed : A.adpReleaseRate
  atpBindingAffinityClosed : A.atpBindingAffinity
  phosphateReleaseTimingClosed : A.phosphateReleaseTiming

def ATPaseCycleClosed (A : ATPaseCyclePackage) : Prop :=
  A.atpHydrolysisRate ∧ A.adpReleaseRate ∧ A.atpBindingAffinity ∧ A.phosphateReleaseTiming

theorem atpase_cycle_closed_from_evidence (A : ATPaseCyclePackage) (E : ATPaseCycleEvidence A) : ATPaseCycleClosed A := by
  exact And.intro E.atpHydrolysisRateClosed (And.intro E.adpReleaseRateClosed (And.intro E.atpBindingAffinityClosed E.phosphateReleaseTimingClosed))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse