.class public Lcom/android/settings/security/OwnerInfoPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/OwnerInfoPreferenceController$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/android/internal/widget/LockPatternUtils;

.field private final c:Landroidx/fragment/app/Fragment;

.field private d:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->c:Landroidx/fragment/app/Fragment;

    .line 56
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p3, :cond_0

    .line 58
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->c:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method private b()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->a:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    .line 2123
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    .line 2128
    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120fec

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 112
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "owner_info_settings"

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "owner_info_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 1084
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_1

    .line 1123
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/h;->d(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 1089
    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_0

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 1092
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->b:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/OwnerInfoPreferenceController;->a:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->d:Lcom/android/settingslib/RestrictedPreference;

    new-instance v1, Lcom/android/settings/security/OwnerInfoPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/OwnerInfoPreferenceController$1;-><init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->a()V

    return-void
.end method
