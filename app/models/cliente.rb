class Cliente < ActiveRecord::Base
    
    validates :nome, presence: {message: 'não pode ser deixado em branco'}, 
                               length: {minimum: 2, message: 'deve ter pelo menos 2 caracteres'}
    
    validates :telefone, presence: {message: 'não pode ser deixado em branco Ex (0000-0000)'}, 
                                   length: {maximum: 9, message: 'deve ter até 9 caracteres'}
    
    validates :email, presence: {message: 'não pode ser deixado em branco'}, 
                              length: {minimum: 10, message: 'deve ter pelo menos 10 caracteres'}, 
                              uniqueness: {message: 'deve ser único'}
    
    validates :endereco, length: {in: 3..100, message: 'deve ter entre 3 e 100 caracteres'}
    
end
