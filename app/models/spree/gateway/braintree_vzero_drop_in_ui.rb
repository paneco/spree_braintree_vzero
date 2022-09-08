module Spree
  class Gateway::BraintreeVzeroDropInUi < Spree::Gateway::BraintreeVzeroBase
    include ::Spree::Gateway::BraintreeVzero::LegacyRailsPatch

    preference :dropin_container, :string, default: 'payment-form'
    preference :checkout_form_id, :string, default: 'checkout_form_payment'
    preference :error_messages_container_id, :string, default: 'content'
    preference :store_payments_in_vault, :select, default: -> { { values: [:do_not_store, :store_only_on_success, :store_all] } }
    preference :'3dsecure', :boolean_select, default: false

    def method_type
      'braintree_vzero_dropin_ui'
    end
  end
end
