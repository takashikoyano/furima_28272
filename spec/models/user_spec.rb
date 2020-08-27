RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end

    it 'nicknameが空では登録できないこと' do
      @user.name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Nickname can't be blank")
    end

    it 'emailが空では登録できないこと' do
      @user.email = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

    it '重複したemailが存在する場合登録できない' do
      @user.save
      another_user = FactoryBot.build(:user)
      another_user.email = @user.email
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'emailは@が存在しない場合登録ができない' do
      @user.email = 'sample.sample'
      @user.valid?
      expect(@user.errors.full_messages).to include("Email can't be @")
    end

    it 'passwordが空では登録できない' do
      @user.password = nil
      @user.valid?
      expect(@user.errors.full_messages).to include("Password can't be blank")
    end

    it 'passwordが5文字以下であれば登録できない' do
      @user.password = '00000'
      @user.password_confirmation = '00000'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
    end

    it 'passwordは半角英数字混合でない場合は登録ができない' do
      @user.password = '000000'
      @user.password_confirmation = '000000'
      @user.valid?
      expect(@user.errors.full_messages).to include('Password cant be number and english' )
    end

    it 'passwordが存在してもpassword confirmationが空では登録できない' do
      @user.password_confirmation = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it '本人の氏名が空だと登録できない' do
      @user.firstname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("firstname can't be blank")
    end

    it '本人の名前が空だと登録できない' do
      @user.lastname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("lastname can't be blank")
    end

    it '本人の氏名が全角（漢字・ひらがな・カタカナ）で入力させること' do
      @user.firstname = '亜あア'
      @user.valid?
      expect(customer).to be_valid
    end
    
    it '本人の名前が全角（漢字・ひらがな・カタカナ）で入力させること'
      @user.lastname = '亜あア'
      @user.valid?
      expect(customer).to be_valid

    it '本人の氏名のフリガナが空だと保存できない' do
      @user.firstnamekana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("firstnamekana can't be blank")
    end

    it '本人の名前のフリガナが空だと保存できない' do
      @user.lastnamekana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("lastnamekana can't be blank")
    end

    it '本人の名前のフリガナは全角（カタカナ）で入力させること' do
      @user.firstnamekana = 'ア'
      @user.valid?
      expect(@user.errors.full_messages).to include("firstnamekana can't be blank")
    end

    it '本人の名前のフリガナは全角（カタカナ）で入力させること' do
      @user.lastnamekana = 'ア'
      @user.valid?
      expect(@user.errors.full_messages).to include("lastnamekana can't be blank")
    end

    it '生年月日が空だと登録ができない' do
      @user.birth = ''
      @user.valid?
      expect(@user.errors.full_messages).to include("birth can't be blank")
    end

    


  end
end
