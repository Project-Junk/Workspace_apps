.class final Lcom/android/settings/ActivityPicker$a;
.super Landroid/graphics/drawable/Drawable;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 441
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 442
    iput p1, p0, Lcom/android/settings/ActivityPicker$a;->a:I

    .line 443
    iput p2, p0, Lcom/android/settings/ActivityPicker$a;->b:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/android/settings/ActivityPicker$a;->b:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 448
    iget v0, p0, Lcom/android/settings/ActivityPicker$a;->a:I

    return v0
.end method

.method public final getMinimumHeight()I
    .locals 1

    .line 463
    iget v0, p0, Lcom/android/settings/ActivityPicker$a;->b:I

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 1

    .line 458
    iget v0, p0, Lcom/android/settings/ActivityPicker$a;->a:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
