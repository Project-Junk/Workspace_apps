.class Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "ColorCastTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/ColorCastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CastGloablSettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/ColorCastTile;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/tiles/ColorCastTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->this$0:Lcom/coloros/systemui/qs/tiles/ColorCastTile;

    .line 111
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleValueChanged(I)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ColorCastTile$CastGloablSettings;->this$0:Lcom/coloros/systemui/qs/tiles/ColorCastTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ColorCastTile;->refreshState()V

    return-void
.end method
