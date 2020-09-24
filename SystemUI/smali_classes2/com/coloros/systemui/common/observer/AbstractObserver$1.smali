.class Lcom/coloros/systemui/common/observer/AbstractObserver$1;
.super Landroid/database/ContentObserver;
.source "AbstractObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/common/observer/AbstractObserver;->register(Landroid/content/Context;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/common/observer/AbstractObserver;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/common/observer/AbstractObserver;Landroid/os/Handler;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/coloros/systemui/common/observer/AbstractObserver$1;->this$0:Lcom/coloros/systemui/common/observer/AbstractObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver$1;->this$0:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v0, v0, Lcom/coloros/systemui/common/observer/AbstractObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Common"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/AbstractObserver$1;->this$0:Lcom/coloros/systemui/common/observer/AbstractObserver;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    return-void
.end method
