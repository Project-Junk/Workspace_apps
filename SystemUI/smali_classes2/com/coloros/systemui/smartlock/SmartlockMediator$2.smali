.class Lcom/coloros/systemui/smartlock/SmartlockMediator$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;Landroid/os/Handler;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$2;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$2;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$100(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V

    .line 172
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$2;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->openConnection()V

    return-void
.end method
