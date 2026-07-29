import canonicalLaneMathlib.Core

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MotorAdmittedObject where
  motor : MotorSpace
  atpHydrolysisDriven : Prop
  directionalMotion : Prop
  trackFilament : Type
  trackTopology : TopologicalSpace trackFilament
  processiveMovement : Prop
  conclusion : processiveMovement

def MotorWitnessClosed (O : MotorAdmittedObject) : Prop :=
  O.processiveMovement

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse