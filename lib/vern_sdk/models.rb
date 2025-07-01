# frozen_string_literal: true

module VernSDK
  [VernSDK::Internal::Type::BaseModel, *VernSDK::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, VernSDK::Internal::AnyHash) } }
  end

  VernSDK::Internal::Util.walk_namespaces(VernSDK::Models).each do |mod|
    case mod
    in VernSDK::Internal::Type::Enum | VernSDK::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  VernSDK::Internal::Util.walk_namespaces(VernSDK::Models)
                         .lazy
                         .grep(VernSDK::Internal::Type::Union)
                         .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  RunCreateParams = VernSDK::Models::RunCreateParams

  RunRetrieveParams = VernSDK::Models::RunRetrieveParams
end
