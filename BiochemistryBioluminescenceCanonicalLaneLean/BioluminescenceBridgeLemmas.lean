import canonicalLaneMathlib.AdmissibleClass
import BiochemistryBioluminescenceCanonicalLaneLean.ReactionKinetics
import BiochemistryBioluminescenceCanonicalLaneLean.MolecularOrbitalTheory
import BiochemistryBioluminescenceCanonicalLaneLean.ThermodynamicsBioluminescence
import BiochemistryBioluminescenceCanonicalLaneLean.ChemicalEquilibrium
import BiochemistryBioluminescenceCanonicalLaneLean.BioluminescenceReactionMechanism

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BioluminescenceAdmittedObject where
  kineticsPackage : ReactionKineticsPackage
  kineticsEvidence : ReactionKineticsEvidence kineticsPackage
  orbitalPackage : MolecularOrbitalTheoryPackage
  orbitalEvidence : MolecularOrbitalTheoryEvidence orbitalPackage
  thermodynamicsPackage : ThermodynamicsBioluminescencePackage
  thermodynamicsEvidence : ThermodynamicsBioluminescenceEvidence thermodynamicsPackage
  equilibriumPackage : ChemicalEquilibriumPackage
  equilibriumEvidence : ChemicalEquilibriumEvidence equilibriumPackage
  mechanismPackage : BioluminescenceReactionMechanismPackage
  mechanismEvidence : BioluminescenceReactionMechanismEvidence mechanismPackage
  conclusion : Prop
  conclusionTerm : conclusion

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let O := A.object
  ReactionKineticsClosed O.kineticsPackage ∧ MolecularOrbitalTheoryClosed O.orbitalPackage ∧ ThermodynamicsBioluminescenceClosed O.thermodynamicsPackage ∧ ChemicalEquilibriumClosed O.equilibriumPackage ∧ BioluminescenceReactionMechanismClosed O.mechanismPackage

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let O := A.object
  refine And.intro (reaction_kinetics_closed_from_evidence O.kineticsPackage O.kineticsEvidence) (And.intro (molecular_orbital_theory_closed_from_evidence O.orbitalPackage O.orbitalEvidence) (And.intro (thermodynamics_bioluminescence_closed_from_evidence O.thermodynamicsPackage O.thermodynamicsEvidence) (And.intro (chemical_equilibrium_closed_from_evidence O.equilibriumPackage O.equilibriumEvidence) (bioluminescence_reaction_mechanism_closed_from_evidence O.mechanismPackage O.mechanismEvidence))))

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse