.class public Lcom/android/settings/security/LockUnificationPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "LockUnificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/android/settings/security/SecuritySettings;

.field c:[B

.field d:[B

.field e:Z

.field private final f:Landroid/os/UserManager;

.field private final g:Landroid/app/admin/DevicePolicyManager;

.field private final h:Lcom/android/internal/widget/LockPatternUtils;

.field private final i:I

.field private j:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 85
    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 86
    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->f:Landroid/os/UserManager;

    .line 87
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->g:Landroid/app/admin/DevicePolicyManager;

    .line 88
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 89
    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object p2

    .line 90
    invoke-interface {p2, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    .line 91
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->f:Landroid/os/UserManager;

    sget p2, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    invoke-static {p1, p2}, Lcom/android/settings/m;->a(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    return-void
.end method

.method private d()V
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    .line 225
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->d:[B

    .line 229
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->byteArrayToPattern([B)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->c:[B

    sget v3, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;[BI)Z

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->d:[B

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->c:[B

    sget v4, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword([B[BII)Z

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->d:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    .line 238
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->d:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 248
    new-instance v0, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 249
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f120c72

    .line 2063
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 251
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 171
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f120c73

    .line 1063
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 173
    invoke-virtual {v2}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method final b()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12177f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/android/settings/password/b;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 194
    invoke-virtual {v2}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 195
    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->c()V

    :cond_0
    return-void
.end method

.method final c()V
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->e:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->e()V

    .line 215
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->f()V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->d()V

    :goto_0
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->c:[B

    .line 220
    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->d:[B

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "unification"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->j:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "unification"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 96
    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->f:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 110
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    .line 115
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->g:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    .line 117
    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileActivePasswordSufficientForParent(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    move v0, p2

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->e:Z

    .line 118
    iget-boolean p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->e:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/android/settings/security/UnificationConfirmationDialog;->a(Z)Lcom/android/settings/security/UnificationConfirmationDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 1045
    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "unification_dialog"

    .line 1046
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1048
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f12177e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v0, Lcom/android/settings/password/b;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    .line 122
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->b:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x82

    .line 123
    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->a:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settings/password/b;->a(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->a()V

    :cond_4
    :goto_0
    return p2
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->j:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->h:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    .line 136
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    .line 137
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->j:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->j:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->i:I

    const-string v2, "no_unified_password"

    .line 140
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 139
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_0
    return-void
.end method
