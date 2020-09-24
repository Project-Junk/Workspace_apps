.class public Lcom/coloros/systemui/common/settingsvalue/LockDeadSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "LockDeadSettingsValueProxy.java"


# static fields
.field private static final LOCK_DEAD_STATE:Ljava/lang/String; = "lock_dead_state"

.field public static final SWITCH_STATE_OFF:I = 0x0

.field public static final SWITCH_STATE_ON:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getLockDeadState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "lock_dead_state"

    const/4 v1, 0x0

    .line 30
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/common/settingsvalue/LockDeadSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
