.class Lcolor/support/v7/widget/cardview/CardViewApi17Impl$1;
.super Ljava/lang/Object;
.source "CardViewApi17Impl.java"

# interfaces
.implements Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/cardview/CardViewApi17Impl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/cardview/CardViewApi17Impl;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/cardview/CardViewApi17Impl;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/CardViewApi17Impl$1;->this$0:Lcolor/support/v7/widget/cardview/CardViewApi17Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/color/support/c/g;->a()Lcom/color/support/c/g;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/color/support/c/g;->a(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p2

    .line 45
    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
