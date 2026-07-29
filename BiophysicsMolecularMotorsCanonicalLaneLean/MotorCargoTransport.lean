import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorCargoTransportPackage where
  cargoSize : Float
  viscosity : Float
  bindingProtein : String
  transportVelocity : Float
  runLength : Float

structure MotorCargoTransportEvidence (C : MotorCargoTransportPackage) where
  stokesDragValid : C.viscosity > 0
  runLengthPositive : C.runLength > 0
  transportVelocityPositive : C.transportVelocity > 0

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse