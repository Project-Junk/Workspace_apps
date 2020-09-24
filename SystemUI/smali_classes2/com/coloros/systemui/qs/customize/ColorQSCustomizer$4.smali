.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;
.super Ljava/lang/Object;
.source "ColorQSCustomizer.java"

# interfaces
.implements Lcom/coloros/systemui/qs/customize/ColorPagerDragHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canReceiveItem()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$000(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$000(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->isMinCount()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onDragEnd$0$ColorQSCustomizer$4()V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$200(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$100(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$100(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$4$iK5N0gYqi_TTgotJVWGxA0HUC7w;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorQSCustomizer$4$iK5N0gYqi_TTgotJVWGxA0HUC7w;-><init>(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onMinCountDrag(Z)V
    .locals 0

    .line 254
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$4;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->mTextMoveLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const p1, 0x7f110315

    goto :goto_0

    :cond_0
    const p1, 0x7f110316

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
