.class Lcom/coloros/systemui/aod/common/AodManager$1;
.super Ljava/lang/Object;
.source "AodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/common/AodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/common/AodManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/common/AodManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/coloros/systemui/aod/common/AodManager$1;->this$0:Lcom/coloros/systemui/aod/common/AodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/aod/common/AodManager$1;->this$0:Lcom/coloros/systemui/aod/common/AodManager;

    invoke-static {v0}, Lcom/coloros/systemui/aod/common/AodManager;->access$100(Lcom/coloros/systemui/aod/common/AodManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/aod/common/AodManager$1;->this$0:Lcom/coloros/systemui/aod/common/AodManager;

    invoke-static {p0}, Lcom/coloros/systemui/aod/common/AodManager;->access$000(Lcom/coloros/systemui/aod/common/AodManager;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method
