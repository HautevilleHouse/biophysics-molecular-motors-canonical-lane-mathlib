import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure CargoBindingPackage where
  cargoAffinity : Prop
  bindingUnbindingRates : Prop
  stallForceGenerated : Prop
  processivityLength : Prop
  cargoAssociation : Prop
  cargoDissociation : Prop
  stallForceMeasured : Prop
  runLengthDistribution : Prop

structure CargoBindingEvidence (C : CargoBindingPackage) where
  cargoAffinityClosed : C.cargoAffinity
  bindingUnbindingRatesClosed : C.bindingUnbindingRates
  stallForceGeneratedClosed : C.stallForceGenerated
  processivityLengthClosed : C.processivityLength

def CargoBindingClosed (C : CargoBindingPackage) : Prop :=
  C.cargoAffinity ∧ C.bindingUnbindingRates ∧ C.stallForceGenerated ∧ C.processivityLength

theorem cargo_binding_closed_from_evidence (C : CargoBindingPackage) (E : CargoBindingEvidence C) : CargoBindingClosed C := by
  exact And.intro E.cargoAffinityClosed (And.intro E.bindingUnbindingRatesClosed (And.intro E.stallForceGeneratedClosed E.processivityLengthClosed))

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse