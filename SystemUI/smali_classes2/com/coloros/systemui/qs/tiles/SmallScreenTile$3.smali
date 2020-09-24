.class Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;
.super Ljava/lang/Object;
.source "SmallScreenTile.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/SmallScreenTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 347
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$900(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "mConn  onServiceConnected ---"

    invoke-static {v0, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p2}, Lcom/coloros/exserviceui/IDragControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/exserviceui/IDragControl;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$802(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Lcom/coloros/exserviceui/IDragControl;)Lcom/coloros/exserviceui/IDragControl;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 342
    iget-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$700(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Statusbar"

    const-string v1, "mConn  onServiceDisconnected ---"

    invoke-static {v0, p1, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$3;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$802(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Lcom/coloros/exserviceui/IDragControl;)Lcom/coloros/exserviceui/IDragControl;

    return-void
.end method
