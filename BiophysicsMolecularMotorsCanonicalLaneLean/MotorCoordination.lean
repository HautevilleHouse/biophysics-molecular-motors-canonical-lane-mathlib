import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure MotorCoordinationPackage where
  motorNumber : Nat
  teamVelocity : Float
  stallForceTeam : Float
  coordinationEfficiency : Float
  loadSharingModel : Prop

structure MotorCoordinationEvidence (C : MotorCoordinationPackage) where
  motorNumberPositive : C.motorNumber > 0
  stallForceTeamPositive : C.stallForceTeam > 0
  coordinationEfficiencyInRange : C.coordinationEfficiency ≥ 0 ∧ C.coordinationEfficiency ≤ 1
  loadSharingModelClosed : C.loadSharingModel

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse