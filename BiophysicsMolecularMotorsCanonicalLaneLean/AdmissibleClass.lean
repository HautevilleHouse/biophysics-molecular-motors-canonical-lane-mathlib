import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure AdmissibleClass where
  object : MotorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MotorWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse