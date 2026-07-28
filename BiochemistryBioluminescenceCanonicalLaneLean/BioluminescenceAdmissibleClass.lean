import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BioluminescenceAdmittedObject where
  luciferaseSpecies : Type
  substrateSpecies : Type
  productSpecies : Type
  photonEmitted : Prop
  bioluminescenceReaction : Prop

structure AdmissibleClass where
  object : BioluminescenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.bioluminescenceReaction ∧ A.object.photonEmitted) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse