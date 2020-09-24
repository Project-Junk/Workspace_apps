.class public Lcom/coloros/systemui/common/helper/KeyguardHelper;
.super Ljava/lang/Object;
.source "KeyguardHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasSecurityKeyguard()Z
    .locals 1

    .line 33
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 34
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    return v0
.end method

.method public static isDefaultKeyguardInSettings(Landroid/content/Context;)Z
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isDefaultKeyguardInSettings(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isLockDeadState(Landroid/content/Context;)Z
    .locals 1

    .line 29
    invoke-static {p0}, Lcom/coloros/systemui/common/settingsvalue/LockDeadSettingsValueProxy;->getLockDeadState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
