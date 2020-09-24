.class Lcom/coloros/systemui/smartlock/SmartlockMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SmartlockMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/smartlock/SmartlockMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$1;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    .line 105
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$1;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->registerSmartlockState()V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0

    .line 96
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    .line 98
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$1;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->onDestroy()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    const-string v0, "SmartlockMediator"

    const-string v1, "onUserUnlocked"

    .line 90
    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$1;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->openConnection()V

    return-void
.end method
