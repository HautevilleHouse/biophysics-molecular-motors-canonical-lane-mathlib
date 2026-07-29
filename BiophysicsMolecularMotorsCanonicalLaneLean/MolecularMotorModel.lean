import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorDomain where
  state : Type
  transition : Type
  energyLandscape : Prop
  stepSize : Prop
  forceResponse : Prop

structure MotorFilamentBinding where
  bindingAffinity : Prop
  unbindingRate : Prop
  loadDependence : Prop
  nucleotideDependence : Prop

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse
