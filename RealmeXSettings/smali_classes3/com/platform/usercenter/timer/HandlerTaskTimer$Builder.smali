.class public Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
.super Ljava/lang/Object;
.source "HandlerTaskTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/timer/HandlerTaskTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Builder"
.end annotation


# static fields
.field static final RUNNING_WHAT:I = 0x1


# instance fields
.field private action:Lcom/platform/usercenter/timer/Action;

.field initialDelay:J

.field longConsumer:Lcom/platform/usercenter/timer/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/platform/usercenter/timer/Consumer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field period:J

.field tag:Ljava/lang/String;

.field takeWhile:J

.field taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

.field final synthetic this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

.field unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/platform/usercenter/timer/HandlerTaskTimer;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private acceptTakeWhile()V
    .locals 3

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->longConsumer:Lcom/platform/usercenter/timer/Consumer;

    iget-wide v1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->takeWhile:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/platform/usercenter/timer/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$000(Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->executeTask()V

    return-void
.end method

.method private executeTask()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$2;->$SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I

    iget-object v1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-virtual {v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->performActionExecute()V

    .line 287
    invoke-virtual {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->cancel()V

    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->performLoopExecute()V

    return-void

    .line 280
    :cond_3
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->performCountDown()V

    return-void
.end method

.method private performActionExecute()V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->action:Lcom/platform/usercenter/timer/Action;

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    invoke-interface {v0}, Lcom/platform/usercenter/timer/Action;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private performCountDown()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->longConsumer:Lcom/platform/usercenter/timer/Consumer;

    if-eqz v0, :cond_1

    .line 296
    iget-wide v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->takeWhile:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 297
    iput-wide v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->takeWhile:J

    .line 298
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->acceptTakeWhile()V

    .line 299
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->obtainThis()Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/platform/usercenter/timer/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->performActionExecute()V

    .line 303
    invoke-virtual {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->cancel()V

    :cond_1
    return-void
.end method

.method private performLoopExecute()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->action:Lcom/platform/usercenter/timer/Action;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->obtainThis()Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/platform/usercenter/timer/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->performActionExecute()V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Lcom/platform/usercenter/timer/Action;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->action:Lcom/platform/usercenter/timer/Action;

    return-object p0
.end method

.method public accept(Lcom/platform/usercenter/timer/Consumer;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/timer/Consumer<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->longConsumer:Lcom/platform/usercenter/timer/Consumer;

    return-object p0
.end method

.method public accept(Lcom/platform/usercenter/timer/Consumer;Lcom/platform/usercenter/timer/Action;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/platform/usercenter/timer/Consumer<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/platform/usercenter/timer/Action;",
            ")",
            "Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->longConsumer:Lcom/platform/usercenter/timer/Consumer;

    .line 176
    iput-object p2, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->action:Lcom/platform/usercenter/timer/Action;

    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$200(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->tag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/platform/usercenter/timer/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public countDown()Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 1

    .line 184
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->COUNT_DOWN:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    iput-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    return-object p0
.end method

.method public delayExecute()Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 1

    .line 200
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->DELAY_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    iput-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    return-object p0
.end method

.method public initialDelay(JLjava/util/concurrent/TimeUnit;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0

    .line 124
    iput-wide p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->initialDelay:J

    .line 125
    iput-object p3, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public loopExecute()Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 1

    .line 192
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->LOOP_EXECUTE:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    iput-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    return-object p0
.end method

.method public obtainThis()Landroid/os/Message;
    .locals 2

    .line 268
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 269
    iput v1, v0, Landroid/os/Message;->what:I

    .line 270
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/platform/usercenter/timer/WeakHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public period(JJLjava/util/concurrent/TimeUnit;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0

    .line 136
    iput-wide p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    .line 137
    iput-wide p3, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->initialDelay:J

    .line 138
    iput-object p5, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public period(JLjava/util/concurrent/TimeUnit;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0

    .line 110
    iput-wide p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    .line 111
    iput-wide p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->initialDelay:J

    .line 112
    iput-object p3, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public resume()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/platform/usercenter/timer/WeakHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->obtainThis()Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/platform/usercenter/timer/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 217
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    sget-object v1, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->COUNT_DOWN:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    if-ne v0, v1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->acceptTakeWhile()V

    :cond_0
    return-void
.end method

.method public start()Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    if-nez v0, :cond_0

    return-object p0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->tag:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object p0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$200(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->tag:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->initialDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->initialDelay:J

    .line 245
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->period:J

    .line 246
    iget-wide v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->takeWhile:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->takeWhile:J

    .line 247
    sget-object v0, Lcom/platform/usercenter/timer/HandlerTaskTimer$2;->$SwitchMap$com$platform$usercenter$timer$HandlerTaskTimer$TaskType:[I

    iget-object v1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->taskType:Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;

    invoke-virtual {v1}, Lcom/platform/usercenter/timer/HandlerTaskTimer$TaskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->action:Lcom/platform/usercenter/timer/Action;

    if-nez v0, :cond_5

    return-object p0

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->longConsumer:Lcom/platform/usercenter/timer/Consumer;

    if-nez v0, :cond_4

    return-object p0

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->acceptTakeWhile()V

    .line 263
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->this$0:Lcom/platform/usercenter/timer/HandlerTaskTimer;

    invoke-static {v0}, Lcom/platform/usercenter/timer/HandlerTaskTimer;->access$100(Lcom/platform/usercenter/timer/HandlerTaskTimer;)Lcom/platform/usercenter/timer/WeakHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->obtainThis()Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->initialDelay:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/platform/usercenter/timer/WeakHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-object p0
.end method

.method public tag(Ljava/lang/String;)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public takeWhile(J)Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;
    .locals 0

    .line 147
    iput-wide p1, p0, Lcom/platform/usercenter/timer/HandlerTaskTimer$Builder;->takeWhile:J

    return-object p0
.end method
