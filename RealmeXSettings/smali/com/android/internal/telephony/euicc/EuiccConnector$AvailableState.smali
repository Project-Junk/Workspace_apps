.class Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AvailableState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 547
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deferMessage(Landroid/os/Message;)V

    .line 549
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
