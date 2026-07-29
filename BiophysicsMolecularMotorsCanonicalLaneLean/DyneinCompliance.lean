import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiophysicsMolecularMotorsCanonicalLaneLean.MolecularMotorModel

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure DyneinCompliancePackage where
  microtubuleBinding : Prop
  atpHydrolysis : Prop
  forceGeneration : Prop
  processivity : Prop
  directionality : Prop

structure DyneinComplianceEvidence (D : DyneinCompliancePackage) where
  microtubuleBindingClosed : D.microtubuleBinding
  atpHydrolysisClosed : D.atpHydrolysis
  forceGenerationClosed : D.forceGeneration
  processivityClosed : D.processivity
  directionalityClosed : D.directionality

def DyneinComplianceClosed (D : DyneinCompliancePackage) : Prop :=
  D.microtubuleBinding ∧ D.atpHydrolysis ∧
  D.forceGeneration ∧ D.processivity ∧ D.directionality

theorem dynein_compliance_closed_from_evidence (D : DyneinCompliancePackage)
    (E : DyneinComplianceEvidence D) : DyneinComplianceClosed D := by
  exact And.intro E.microtubuleBindingClosed
    (And.intro E.atpHydrolysisClosed
      (And.intro E.forceGenerationClosed
        (And.intro E.processivityClosed E.directionalityClosed)))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
