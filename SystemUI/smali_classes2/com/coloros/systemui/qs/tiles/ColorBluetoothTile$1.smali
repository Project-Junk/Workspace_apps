.class Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile$1;
.super Ljava/lang/Object;
.source "ColorBluetoothTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->access$002(Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;Z)Z

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile$1;->this$0:Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorBluetoothTile;->refreshState()V

    return-void
.end method
