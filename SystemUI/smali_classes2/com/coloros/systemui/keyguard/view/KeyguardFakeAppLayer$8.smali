.class Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$8;
.super Landroid/os/AsyncTask;
.source "KeyguardFakeAppLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->finishDreamService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$8;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 414
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 417
    invoke-static {}, Lcom/coloros/systemui/aod/AodService;->getService()Lcom/coloros/systemui/aod/AodService;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x8

    const-string p1, "BiometricsUnlock.finishDreamService"

    .line 419
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string p1, "KeyguardFakeAppLayer"

    const-string v2, "BiometricsUnlock, onAuthenticationSucceeded finishDreamService"

    .line 421
    invoke-static {p1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/coloros/systemui/aod/AodService;->finish()V

    .line 423
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
