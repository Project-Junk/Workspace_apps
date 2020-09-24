.class Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;
.super Ljava/lang/Object;
.source "DozeDockHandler.java"

# interfaces
.implements Lcom/android/systemui/dock/DockManager$DockEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeDockHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockEventListener"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeDockHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeDockHandler;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeDockHandler$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeDockHandler;)V

    return-void
.end method


# virtual methods
.method public onEvent(I)V
    .locals 2

    .line 114
    invoke-static {}, Lcom/android/systemui/doze/DozeDockHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dock event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeDockHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$200(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v1, p1}, Lcom/android/systemui/doze/DozeDockHandler;->access$302(Lcom/android/systemui/doze/DozeDockHandler;I)I

    .line 117
    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeDockHandler;->access$300(Lcom/android/systemui/doze/DozeDockHandler;)I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, p1, :cond_2

    .line 132
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeDockHandler;->access$200(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {p0, v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$600(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {p0, v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$400(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_0

    .line 122
    :cond_4
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    .line 123
    invoke-static {p1}, Lcom/android/systemui/doze/DozeDockHandler;->access$500(Lcom/android/systemui/doze/DozeDockHandler;)Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p1

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeDockHandler;->access$200(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_0

    .line 127
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {p0, v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$600(Lcom/android/systemui/doze/DozeDockHandler;Lcom/android/systemui/doze/DozeMachine$State;)V

    :goto_0
    return-void
.end method

.method register()V
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_1
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    return-void
.end method

.method unregister()V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->this$0:Lcom/android/systemui/doze/DozeDockHandler;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeDockHandler;->access$700(Lcom/android/systemui/doze/DozeDockHandler;)Lcom/android/systemui/dock/DockManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeDockHandler$DockEventListener;->mRegistered:Z

    return-void
.end method
