import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BioluminescenceObject where
  species : Type
  luciferinConcentration : ℝ
  luciferaseConcentration : ℝ
  reactionRate : ℝ
  quantumYield : ℝ
  hasBioluminescence : Prop

structure AdmissibleClass where
  object : BioluminescenceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BioluminescenceClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse