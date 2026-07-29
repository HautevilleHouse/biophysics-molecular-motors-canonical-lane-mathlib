import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorProteinState where
  position : Float
  chemicalState : String
  atpBound : Bool
  conformationalChange : Float

structure MotorHeadDomain where
  stepSize : Float
  stallForce : Float
  velocity : Float

structure MotorProteinStatesPackage where
  states : List MotorProteinState
  head : MotorHeadDomain
  dwellTimeDistribution : Prop
  processive : Prop

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse