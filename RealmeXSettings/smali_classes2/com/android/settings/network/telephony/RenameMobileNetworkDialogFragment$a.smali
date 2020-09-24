.class final Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;
.super Ljava/lang/Object;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method private constructor <init>(Ljava/lang/String;III)V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->a:Ljava/lang/String;

    .line 227
    iput p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->b:I

    .line 228
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    .line 229
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 231
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    int-to-float p3, p4

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object p3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 233
    iget-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIB)V
    .locals 0

    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$a;-><init>(Ljava/lang/String;III)V

    return-void
.end method
