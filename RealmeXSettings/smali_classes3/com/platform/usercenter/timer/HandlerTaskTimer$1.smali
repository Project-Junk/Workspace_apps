.class Lcom/platform/usercenter/timer/HandlerTaskTimer$1;
.super Ljava/lang/Object;
.source "HandlerTaskTimer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/timer/HandlerTaskTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;


# direct methods
.method constructor <init>(Lcom/platform/usercenter/timer/HandlerTaskTimer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$1;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;

    if-eqz v0, :cond_0

    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;

    invoke-static {p1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->access$000(Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
