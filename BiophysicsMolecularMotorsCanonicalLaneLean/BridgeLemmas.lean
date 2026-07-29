import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MotorWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse