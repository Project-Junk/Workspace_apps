.class public final synthetic Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;->f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iput p2, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;->f$0:Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;

    iget p0, p0, Lcom/coloros/systemui/gesture/sidegesture/-$$Lambda$ColorSideGestureManager$7SZ1UPlBUI5AxNdlZfjbm3NcaEM;->f$1:I

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/gesture/sidegesture/ColorSideGestureManager;->lambda$onUpEvent$9$ColorSideGestureManager(I)V

    return-void
.end method
