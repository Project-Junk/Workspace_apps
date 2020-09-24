.class Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$1;)V
    .locals 0

    .line 599
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 607
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/service/euicc/IEuiccService;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1102(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)Landroid/service/euicc/IEuiccService;

    .line 609
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    .line 611
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 612
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$700(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 613
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 616
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_1

    .line 618
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 620
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    .line 621
    invoke-static {v4}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 619
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_4

    .line 623
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 624
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v2, v1

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v2, :cond_7

    .line 626
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$1200(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    .line 627
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$602(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)Landroid/content/pm/ServiceInfo;

    .line 628
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$600(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_6

    .line 629
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 631
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_7
    :goto_2
    return v1

    .line 635
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 636
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    iget-object v0, p1, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    .line 638
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->access$800(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 639
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;->this$0:Lcom/android/internal/telephony/euicc/EuiccConnector;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->deferMessage(Landroid/os/Message;)V

    return v1

    :cond_a
    return v2
.end method
