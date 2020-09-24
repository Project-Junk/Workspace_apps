.class Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$2;
.super Landroid/telephony/PhoneStateListener;
.source "SwitchCellularDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 298
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 299
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SwitchCellularDataTile;->refreshState()V

    return-void
.end method
