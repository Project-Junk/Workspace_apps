.class public Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockStatistic;
.super Ljava/lang/Object;
.source "KeyguardCombineUnlockStatistic.java"


# static fields
.field private static final CODE_KEYGUARD_COMBINEUNLOCK_RESULT:Ljava/lang/String; = "combine_unlock_result"

.field public static final COMBINE_UNLOCK_RESULT_FACE_SUCCESS:I = 0x2

.field public static final COMBINE_UNLOCK_RESULT_FAIL:I = 0x3

.field public static final COMBINE_UNLOCK_RESULT_FP_SUCCESS:I = 0x1

.field public static final COMBINE_UNLOCK_RESULT_START:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectDataOfCombineUnlockResult(Landroid/content/Context;I)V
    .locals 1

    .line 30
    new-instance v0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;

    invoke-direct {v0, p1, p0}, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockStatistic$78psVuuooHOLjA5T8fqz50C1pcE;-><init>(ILandroid/content/Context;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$collectDataOfCombineUnlockResult$0(ILandroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "combine_unlock_result"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "combine_unlock"

    .line 33
    invoke-static {p1, p0, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
