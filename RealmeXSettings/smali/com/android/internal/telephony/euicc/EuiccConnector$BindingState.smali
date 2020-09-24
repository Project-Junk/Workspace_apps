.class Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1000(Lcom/android/internal/telephony/euicc/EuiccConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deferMessage(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
