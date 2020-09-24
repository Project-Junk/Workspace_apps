.class public Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "PowerButtonInstantLockPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:I

.field private final b:Lcom/android/internal/widget/LockPatternUtils;

.field private final c:Lcom/android/settings/security/trustagent/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 45
    iput p2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->a:I

    .line 46
    iput-object p3, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    .line 47
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->c:Lcom/android/settings/security/trustagent/b;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "power_button_instantly_locks"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->a:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x80000

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->a:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 72
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->a:I

    .line 73
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    .line 72
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0, v1}, Lcom/android/settings/security/trustagent/b;->a(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120ced

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x7f121621

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
