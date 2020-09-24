.class Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt$1;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorExt.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/watcher/ColorKeyguardWatcher$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt$1;->this$0:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorKeyguardLoad(Z)V
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onColorKeyguardLoad success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitorExt"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt$1;->this$0:Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/KeyguardUpdateMonitorExt;->handleColorKeyguardLoad(Z)V

    return-void
.end method
