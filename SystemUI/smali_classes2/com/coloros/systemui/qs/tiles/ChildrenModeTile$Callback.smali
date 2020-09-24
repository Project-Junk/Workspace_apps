.class final Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;
.super Ljava/lang/Object;
.source "ChildrenModeTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;->this$0:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$1;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;-><init>(Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;)V

    return-void
.end method


# virtual methods
.method public onKeyguardShowingChanged()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;->this$0:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;

    invoke-static {v0}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->access$100(Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "onKeyguardShowingChanged"

    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object p0, p0, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile$Callback;->this$0:Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/tiles/ChildrenModeTile;->refreshState()V

    return-void
.end method
