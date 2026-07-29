import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiophysicsMolecularMotorsCanonicalLaneLean

structure ATPHydrolysisCyclePackage where
  bindingRate : Float
  hydrolysisRate : Float
  releaseRate : Float
  detailedBalance : Prop
  freeEnergyChange : Float

structure ATPHydrolysisCycleEvidence (C : ATPHydrolysisCyclePackage) where
  detailedBalanceClosed : C.detailedBalance
  freeEnergyChangeComputed : C.freeEnergyChange > 0

end BiophysicsMolecularMotorsCanonicalLaneLean
end HautevilleHouse