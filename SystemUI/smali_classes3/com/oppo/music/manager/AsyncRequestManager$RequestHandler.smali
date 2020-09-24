.class Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;
.super Landroid/os/Handler;
.source "AsyncRequestManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/manager/AsyncRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field public static final MSG_REQUEST_BACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestHandler"


# instance fields
.field final synthetic this$0:Lcom/oppo/music/manager/AsyncRequestManager;


# direct methods
.method private constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;->this$0:Lcom/oppo/music/manager/AsyncRequestManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/music/manager/AsyncRequestManager;Lcom/oppo/music/manager/AsyncRequestManager$1;)V
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/oppo/music/manager/AsyncRequestManager$RequestHandler;-><init>(Lcom/oppo/music/manager/AsyncRequestManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;

    if-eqz p0, :cond_1

    .line 159
    iget-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    if-eqz p1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mListener:Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;

    iget-object p0, p0, Lcom/oppo/music/manager/AsyncRequestManager$RequestWrap;->mRequest:Lcom/oppo/music/manager/Request;

    invoke-interface {p1, p0}, Lcom/oppo/music/manager/AsyncRequestManager$AsyncRequestListener;->onRequestBack(Lcom/oppo/music/manager/Request;)V

    goto :goto_0

    :cond_1
    const-string p0, "RequestHandler"

    const-string p1, "handleMessage() msg.obj is empty?"

    .line 163
    invoke-static {p0, p1}, Lcom/oppo/music/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
