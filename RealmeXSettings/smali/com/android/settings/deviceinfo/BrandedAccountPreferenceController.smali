.class public Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;
.super Lcom/android/settings/core/a;
.source "BrandedAccountPreferenceController.java"


# instance fields
.field private final mAccounts:[Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getAccountFeatureProvider()Lcom/android/settings/accounts/a;

    move-result-object p1

    .line 41
    invoke-interface {p1}, Lcom/android/settings/accounts/a;->a()[Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getAccountFeatureProvider()Lcom/android/settings/accounts/a;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    array-length v2, v2

    if-nez v2, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    new-instance p1, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;-><init>(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/a;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public synthetic lambda$displayPreference$0$BrandedAccountPreferenceController(Lcom/android/settings/accounts/a;Landroidx/preference/Preference;)Z
    .locals 2

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget-object p2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    const-string v0, "account"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    const-string/jumbo v0, "user_handle"

    .line 72
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    const-string v0, "account_type"

    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const v1, 0x7f1200d1

    .line 1063
    invoke-virtual {v0, p2, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p2

    .line 80
    invoke-virtual {p2, p1}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 p2, 0x28

    .line 81
    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
