.class Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory$1;
.super Ljava/lang/Object;
.source "AsyncTaskThreadFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory$1;->this$0:Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory;

    iput-object p2, p0, Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0xa

    .line 18
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/jsbridge/AsyncTaskThreadFactory$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
