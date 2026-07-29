import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure ForceVelocityRelation where
  zeroLoadVelocity : Float
  stallForce : Float
  forceVelocityCurve : Float -> Float
  linearApproximation : Prop
  hillParameter : Float

structure ForceVelocityEvidence (F : ForceVelocityRelation) where
  zeroLoadVelocityPositive : F.zeroLoadVelocity > 0
  stallForcePositive : F.stallForce > 0
  linearApproximationClosed : F.linearApproximation

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse