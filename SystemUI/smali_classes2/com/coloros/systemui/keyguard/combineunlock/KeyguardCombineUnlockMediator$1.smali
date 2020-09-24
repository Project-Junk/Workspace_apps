.class Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator$1;
.super Landroid/database/ContentObserver;
.source "KeyguardCombineUnlockMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;Landroid/os/Handler;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator$1;->this$0:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator$1;->this$0:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->access$000(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;)V

    return-void
.end method
