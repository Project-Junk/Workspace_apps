.class Lcom/coloros/anim/model/layer/TextLayer$1;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/anim/model/layer/TextLayer;


# direct methods
.method constructor <init>(Lcom/coloros/anim/model/layer/TextLayer;I)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/coloros/anim/model/layer/TextLayer$1;->this$0:Lcom/coloros/anim/model/layer/TextLayer;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 41
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/model/layer/TextLayer$1;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
