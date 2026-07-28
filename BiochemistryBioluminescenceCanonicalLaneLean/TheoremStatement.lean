import BiochemistryBioluminescenceCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BiochemistryBioluminescenceCanonicalLaneLean

structure BiochemBioluminescenceTheoremStatement where
  sourceKey : String
  theoremName : String
  mechanismClosed : Prop
  closureProved : Bool

def defaultTheoremStatement : BiochemBioluminescenceTheoremStatement :=
  { sourceKey := "biochemistry-bioluminescence-canonical-lane",
    theoremName := "Biochemistry Bioluminescence Admissible Closure",
    mechanismClosed := ∀ (A : AdmissibleClass), ConstrainedBiochemistryBioluminescenceClosure A,
    closureProved := true
  }

theorem default_theorem_statement_is_valid :
    defaultTheoremStatement.mechanismClosed := by
  intro A
  exact constrained_biochemistry_bioluminescence_endgame A

end BiochemistryBioluminescenceCanonicalLaneLean
end HautevilleHouse