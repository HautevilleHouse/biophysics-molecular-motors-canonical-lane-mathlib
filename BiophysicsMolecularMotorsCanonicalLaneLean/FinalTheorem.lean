import canonicalLaneMathlib.AdmissibleClass
import BiophysicsMolecularMotorsCanonicalLaneLean.MotorProteinStates
import BiophysicsMolecularMotorsCanonicalLaneLean.ATPHydrolysisCycle
import BiophysicsMolecularMotorsCanonicalLaneLean.ForceVelocityRelation
import BiophysicsMolecularMotorsCanonicalLaneLean.MotorCargoTransport
import BiophysicsMolecularMotorsCanonicalLaneLean.MotorCoordination

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

def ConstrainedMotorProteinClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_motor_protein_endgame (A : AdmissibleClass) :
    ConstrainedMotorProteinClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse