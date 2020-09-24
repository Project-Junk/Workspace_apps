.class Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnavailableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0

    .line 516
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 519
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 520
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$602(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)Landroid/content/pm/ServiceInfo;

    .line 521
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 522
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    if-eq p1, v0, :cond_1

    .line 524
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_1
    :goto_0
    return v1

    .line 527
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 528
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$900(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object p1

    .line 529
    invoke-interface {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;->onEuiccServiceUnavailable()V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
