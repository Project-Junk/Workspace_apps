.class public Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;
.super Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;
.source "PrivacyPwdPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Lcom/color/support/widget/ColorToolTips;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final c()V
    .locals 4

    .line 57
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    const-string v1, "privacy_password_setup"

    const-string v2, "privacy_password_settings"

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0, v1, v3}, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result v0

    .line 64
    iget-object v3, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v3, v2, v0}, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 65
    iget-object v2, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "privacy_password_setup"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;

    if-eqz p1, :cond_0

    .line 1053
    iput-object p0, p1, Lcom/coloros/settings/widget/preference/ColorFocusWithIconPreference;->a:Landroid/view/View$OnClickListener;

    :cond_0
    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "privacy_password_setup"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/al;->i()Z

    move-result p1

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "param_setup_privacy"

    .line 74
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/color/support/widget/ColorToolTips;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/color/support/widget/ColorToolTips;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorToolTips;->setDismissOnTouchOutside(Z)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorToolTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f121108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {v1, v0}, Lcom/color/support/widget/ColorToolTips;->setContent(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorToolTips;->show(Landroid/view/View;)V

    return-void

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/PrivacyPwdPreferenceController;->b:Lcom/color/support/widget/ColorToolTips;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorToolTips;->dismiss()V

    return-void
.end method
