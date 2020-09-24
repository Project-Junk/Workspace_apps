.class Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 328
    iget v0, p1, Landroid/os/Message;->what:I

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processMessage: unhandled message type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currState="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 331
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "---- Dumping InboundSmsHandler ----"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total records="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rec[%d]: %s\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "---- Dumped InboundSmsHandler ----"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
