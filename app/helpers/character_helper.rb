module CharacterHelper
	def improvement_select options = {}
		options = Improvement.all.order(:name).map {|i| ["#{i.name} (#{i.cost})", i.id] }
    select_tag "improvements", options_for_select(options), class: "form-control", id: "character_improvements", prompt: "Aprimoramento Positivo"
  end

  def injury_select options = {}
		options = Injury.all.order(:name).map {|i| ["#{i.name} (#{i.cost})", i.id] }
    select_tag "injuries", options_for_select(options), class: "form-control", id: "character_injuries", prompt: "Aprimoramento Negativo"
  end

  def skill_select options = {}
		options = Skill.all.order(:name).map {|i| ["#{i.name} [#{i.based_attribute}]", i.id] }
    select_tag "skills", options_for_select(options), class: "form-control", id: "character_skills", prompt: "Perícias"
  end

  def weapon_skill_select options = {}
		options = WeaponSkills.all.order(:name).map {|i| ["#{i.name} [#{i.based_attribute}]", i.id] }
    select_tag "weapon_skills", options_for_select(options), class: "form-control", id: "character_weapons_skills", prompt: "Perícia com Armas"
  end

  def race_select
    options = Race.all.order(:name).map {|i| ["#{i.name}", i.id] }
    select_tag "character[race_id]", options_for_select(options), class: "form-control", id: "races", prompt: "Seleciona a Raça"
  end

  def kit_select
    options = Kit.all.order(:name).map {|i| ["#{i.name}", i.id] }
    select_tag "character[kit_id]", options_for_select(options), class: "form-control", id: "kits", prompt: "Selecione uma Classe"
  end

end
