.class Lcolor/support/v7/widget/cardview/CardViewBaseImpl$1;
.super Ljava/lang/Object;
.source "CardViewBaseImpl.java"

# interfaces
.implements Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcolor/support/v7/widget/cardview/CardViewBaseImpl;->initStatic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcolor/support/v7/widget/cardview/CardViewBaseImpl;


# direct methods
.method constructor <init>(Lcolor/support/v7/widget/cardview/CardViewBaseImpl;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcolor/support/v7/widget/cardview/CardViewBaseImpl$1;->this$0:Lcolor/support/v7/widget/cardview/CardViewBaseImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V
    .locals 0

    .line 82
    invoke-static {}, Lcom/color/support/util/ColorRoundRectUtil;->getInstance()Lcom/color/support/util/ColorRoundRectUtil;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/color/support/util/ColorRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object p0

    .line 83
    invoke-virtual {p1, p0, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
