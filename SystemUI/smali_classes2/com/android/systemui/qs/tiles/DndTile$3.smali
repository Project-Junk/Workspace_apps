.class Lcom/android/systemui/qs/tiles/DndTile$3;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .locals 0

    .line 355
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$600(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->access$500(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    :cond_0
    return-void
.end method

.method public onZenChanged(I)V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$100(Lcom/android/systemui/qs/tiles/DndTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZenChanged zen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    invoke-static {v2, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$200(Lcom/android/systemui/qs/tiles/DndTile;Ljava/lang/Object;)V

    .line 348
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DndTile;->access$300(Lcom/android/systemui/qs/tiles/DndTile;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DndTile$3;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile;->access$400(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->access$500(Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V

    :cond_0
    return-void
.end method
