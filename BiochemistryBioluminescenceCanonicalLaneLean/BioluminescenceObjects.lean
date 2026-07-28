import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BioluminescenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BioluminescenceAdmittedObject where
  space : BioluminescenceSpace
  reactionKineticsDefined : Prop
  thermodynamicPropertiesDefined : Prop
  molecularOrbitalsComputed : Prop
  conclusion : reactionKineticsDefined ∧ thermodynamicPropertiesDefined ∧ molecularOrbitalsComputed

structure BioluminescenceEndgameState where
  object : BioluminescenceAdmittedObject

def BioluminescenceWitnessClosed (O : BioluminescenceAdmittedObject) : Prop :=
  O.reactionKineticsDefined ∧ O.thermodynamicPropertiesDefined ∧ O.molecularOrbitalsComputed

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse