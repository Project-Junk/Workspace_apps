.class public Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockStatistic;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockStatistic.java"


# static fields
.field private static final CODE_KEYGUARD_FACEUNLOCK_FAIL:Ljava/lang/String; = "faceunlock_fail"

.field private static final CODE_KEYGUARD_FACEUNLOCK_START:Ljava/lang/String; = "faceunlock_start"

.field public static final CODE_KEYGUARD_FACE_FILLLIGHT_RESULT:Ljava/lang/String; = "face_filllight_result"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectDataOfFaceUnlockFailEvent(Landroid/content/Context;I)V
    .locals 1

    .line 38
    new-instance v0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$nc2w7PbXeaZ-CcZr-h5sh0DNql8;

    invoke-direct {v0, p1, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$nc2w7PbXeaZ-CcZr-h5sh0DNql8;-><init>(ILandroid/content/Context;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static collectDataOfFaceUnlockFailEventWhileFillLight(Landroid/content/Context;ZI)V
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockFillLightCtrl;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance v0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;

    invoke-direct {v0, p1, p2, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$HkGhFq1XCAUNk71X5p4eoe-Yiik;-><init>(ZILandroid/content/Context;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static collectDataOfFaceUnlockStartEvent(Landroid/content/Context;I)V
    .locals 1

    .line 30
    new-instance v0, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$9AysTX9z_eCNQwpce3zO-im6fzA;

    invoke-direct {v0, p1, p0}, Lcom/coloros/systemui/keyguard/face/-$$Lambda$KeyguardFaceUnlockStatistic$9AysTX9z_eCNQwpce3zO-im6fzA;-><init>(ILandroid/content/Context;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$collectDataOfFaceUnlockFailEvent$1(ILandroid/content/Context;)V
    .locals 2

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "faceunlock_fail"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "faceverify_unlock"

    .line 41
    invoke-static {p1, p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$collectDataOfFaceUnlockFailEventWhileFillLight$2(ZILandroid/content/Context;)V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    const/16 p1, -0x64

    .line 52
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "face_filllight_result"

    .line 51
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "face_filllight"

    .line 53
    invoke-static {p2, p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$collectDataOfFaceUnlockStartEvent$0(ILandroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "faceunlock_start"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "faceverify_unlock"

    .line 33
    invoke-static {p1, p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
