.class public Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;,
        Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$RetryCallBack;
    }
.end annotation


# static fields
.field public static final FATAL:I = 0x0

.field public static final RETRY:I = 0x2

.field public static final SKIP:I = 0x1


# instance fields
.field private mExceptionListener:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;

.field private mThrowables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mThrowables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public catchThrowable(ILjava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->catchThrowable(ILjava/lang/Throwable;Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$RetryCallBack;)V

    return-void
.end method

.method public catchThrowable(ILjava/lang/Throwable;Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$RetryCallBack;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mThrowables:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mExceptionListener:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mExceptionListener:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;

    invoke-interface {p0, p2}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;->uncaughtFatal(Ljava/lang/Throwable;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$RetryCallBack;->doRetry()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reportWarnings()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mExceptionListener:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mExceptionListener:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;

    iget-object v1, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mThrowables:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;->uncaughtWarning([Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mThrowables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setExceptionListener(Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler;->mExceptionListener:Lcom/coloros/backup/sdk/v2/common/utils/BRExceptionHandler$ExceptionListener;

    return-void
.end method
