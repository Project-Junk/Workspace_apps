.class public Lcom/coloros/settings/feature/password/controller/SmartLockController;
.super Lcom/android/settings/core/a;
.source "SmartLockController.java"


# static fields
.field private static final KEY_SMART_LOCK:Ljava/lang/String; = "smart_lock"


# instance fields
.field private final mSmartLockSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "smart_lock"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/coloros/settings/feature/password/controller/SmartLockController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ar(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/controller/SmartLockController;->mSmartLockSupport:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 39
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/SmartLockController;->mSmartLockSupport:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$C7QlvrHd85MGuZ_IqeMyQPsHDbY;-><init>(Lcom/coloros/settings/feature/password/controller/SmartLockController;Landroidx/preference/PreferenceScreen;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/controller/SmartLockController;->mSmartLockSupport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public synthetic lambda$displayPreference$1$SmartLockController(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/SmartLockController;->mContext:Landroid/content/Context;

    const-string v1, "com.coloros.smartlock"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$VzSWeFEyXYBmkPE3R2lAuUtNAq0;

    invoke-direct {v1, p0, p1, v0}, Lcom/coloros/settings/feature/password/controller/-$$Lambda$SmartLockController$VzSWeFEyXYBmkPE3R2lAuUtNAq0;-><init>(Lcom/coloros/settings/feature/password/controller/SmartLockController;Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$null$0$SmartLockController(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/SmartLockController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
