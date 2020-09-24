.class Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;
.super Landroid/os/AsyncTask;
.source "ColorCameraAnimController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->initAnimationTask()V
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
        "Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPostExecute$0(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;)V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->addToWindow()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongThread"
        }
    .end annotation

    const-string p1, "ColorCameraAnimController"

    const-string v0, "mAnimTask running, doInBackground"

    .line 95
    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->access$000(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "not support front camera anim"

    .line 98
    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->access$100(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->initView(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongThread"
        }
    .end annotation

    .line 91
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->doInBackground([Ljava/lang/Void;)Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;)V
    .locals 3

    const-string v0, "ColorCameraAnimController"

    const-string v1, "mAnimTask running, onPostExecute"

    .line 107
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->access$200(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->access$200(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "mAnimTask running, anim already running"

    .line 111
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/coloros/systemui/common/keyguard/feature/KeyguardFeatureOption;->isSupportMotorHardWare()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;->cancelAnimation()V

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "onPostExecute, animView is null"

    .line 119
    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->access$202(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 123
    new-instance v0, Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$1$B9UfpRMh1ceAg7hgo62VeVU6XJM;

    invoke-direct {v0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/-$$Lambda$ColorCameraAnimController$1$B9UfpRMh1ceAg7hgo62VeVU6XJM;-><init>(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;)V

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardThreadUtil;->runOnUiThreadAtFront(Ljava/lang/Runnable;)V

    .line 124
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->this$0:Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;->access$302(Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/frontcamera/ColorCameraAnimController$1;->onPostExecute(Lcom/coloros/systemui/keyguard/frontcamera/view/ColorBaseFrontCameraAnimView;)V

    return-void
.end method
