.class final Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;
.super Ljava/lang/Object;
.source "SmallScreenTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/SmallScreenTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;Lcom/coloros/systemui/qs/tiles/SmallScreenTile$1;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;-><init>(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->access$1000(Lcom/coloros/systemui/qs/tiles/SmallScreenTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "onKeyguardShowingChanged"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/SmallScreenTile$Callback;->this$0:Lcom/coloros/systemui/qs/tiles/SmallScreenTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/SmallScreenTile;->refreshState()V

    return-void
.end method
