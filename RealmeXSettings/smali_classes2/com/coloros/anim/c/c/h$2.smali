.class final Lcom/coloros/anim/c/c/h$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/anim/c/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/anim/c/c/h;


# direct methods
.method constructor <init>(Lcom/coloros/anim/c/c/h;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/anim/c/c/h$2;->a:Lcom/coloros/anim/c/c/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 44
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/coloros/anim/c/c/h$2;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method