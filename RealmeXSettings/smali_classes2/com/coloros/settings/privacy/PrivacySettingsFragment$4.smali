.class final Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;
.super Ljava/lang/Object;
.source "PrivacySettingsFragment.java"

# interfaces
.implements Lcom/coloros/settings/privacy/SafeQuestionActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/PrivacySettingsFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVerify(Z)V
    .locals 3

    .line 457
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceChange onVerify: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacySettingsFragment"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->d(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->d(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 460
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->e(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 461
    iget-object p1, p0, Lcom/coloros/settings/privacy/PrivacySettingsFragment$4;->a:Lcom/coloros/settings/privacy/PrivacySettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->f(Lcom/coloros/settings/privacy/PrivacySettingsFragment;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const-string v2, "pw_privacy_account"

    invoke-static {p1, v2, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method
