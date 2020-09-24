.class public Lcom/coloros/systemui/keyguard/util/KgdLogUtil;
.super Ljava/lang/Object;
.source "KgdLogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static internal(Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V
    .locals 1

    const-string v0, "Keyguard"

    .line 36
    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    return-void
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Keyguard"

    .line 32
    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static normal(Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V
    .locals 1

    const-string v0, "Keyguard"

    .line 24
    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/common/util/LogUtil$IDebug;)V

    return-void
.end method

.method public static normal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Keyguard"

    .line 20
    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Keyguard"

    .line 40
    invoke-static {v0, p0, p1, p2}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static wraning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Keyguard"

    .line 28
    invoke-static {v0, p0, p1}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
