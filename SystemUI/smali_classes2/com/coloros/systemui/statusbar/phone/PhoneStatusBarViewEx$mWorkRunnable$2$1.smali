.class final Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarViewEx.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->invoke()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->access$initObjAnimation(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)V

    .line 97
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->access$getMUIHandler$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    iget-object v1, v1, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->access$getMUIRunnable$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    iget-object v0, v0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->access$getMUIHandler$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2$1;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;

    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx$mWorkRunnable$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;

    invoke-static {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;->access$getMUIRunnable$p(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarViewEx;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
