.class Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$2;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ColorHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/DataSaverController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile$2;->this$0:Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorHotspotTile;->refreshState()V

    return-void
.end method
