.class public Lcom/android/settings/security/screenlock/LockScreenPreferenceController;
.super Lcom/android/settings/core/a;
.source "LockScreenPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockScreenPreferenceController;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v0}, Lcom/android/settings/notification/LockScreenNotificationPreferenceController;->a(Landroid/content/Context;)I

    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
