.class Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$7;
.super Landroid/os/AsyncTask;
.source "KeyguardFakeAppLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;->resumeActivityForBiometricsUnlock()V
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

    .line 398
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$7;->this$0:Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 398
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/view/KeyguardFakeAppLayer$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-wide/16 p0, 0x8

    const-string v0, "BiometricsUnlock.ResumeActivity"

    .line 401
    invoke-static {p0, p1, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    const-string v0, "KeyguardFakeAppLayer"

    const-string v1, "BiometricsUnlock, onAuthenticationSucceeded resume activity"

    .line 403
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->keyguardGoingAway(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :catch_0
    invoke-static {p0, p1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0
.end method
