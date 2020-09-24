.class Lcom/android/systemui/qs/customize/TileAdapter$5;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 615
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemViewType(I)I

    move-result p0

    .line 620
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSQuickSettings()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 621
    invoke-static {}, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->getInstance()Lcom/coloros/systemui/qs/customize/TileAdapterExt;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/qs/customize/TileAdapterExt;->getSpanSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p1, 0x3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    :cond_2
    :goto_0
    return p1
.end method
