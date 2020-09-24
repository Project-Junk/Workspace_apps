.class Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;
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

    .line 270
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canReceiveItem()Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$300(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$300(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

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

.method public onDragEnd()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {v0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$000(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer$5;->this$0:Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;

    invoke-static {p0}, Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;->access$000(Lcom/coloros/systemui/qs/customize/ColorQSCustomizer;)Lcom/coloros/systemui/qs/customize/ColorTileAdapter;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/customize/ColorTileAdapter;->setTilesChanged(Z)V

    :cond_0
    return-void
.end method
