.class Lcom/android/internal/telephony/InboundSmsHandler$StartupState;
.super Lcom/android/internal/util/State;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartupState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$1;)V
    .locals 0

    .line 355
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v1, "entering Startup state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$500(Lcom/android/internal/telephony/InboundSmsHandler;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StartupState.processMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 367
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 375
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler;->access$600(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    return v1
.end method
