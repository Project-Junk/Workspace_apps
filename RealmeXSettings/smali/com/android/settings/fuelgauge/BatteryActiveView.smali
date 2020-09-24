.class public Lcom/android/settings/fuelgauge/BatteryActiveView;
.super Landroid/view/View;
.source "BatteryActiveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryActiveView$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Lcom/android/settings/fuelgauge/BatteryActiveView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->a:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 51
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->b:Lcom/android/settings/fuelgauge/BatteryActiveView$a;

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryActiveView$a;->b()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->b:Lcom/android/settings/fuelgauge/BatteryActiveView$a;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/BatteryActiveView$a;->a()J

    move-result-wide v1

    long-to-float v1, v1

    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 57
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1065
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->a:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v3

    div-float/2addr v2, v1

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v7, v2, v3

    const/4 v8, 0x0

    int-to-float v2, v5

    div-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v9, v2, v3

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getHeight()I

    move-result v2

    int-to-float v10, v2

    iget-object v11, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->a:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$a;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->b:Lcom/android/settings/fuelgauge/BatteryActiveView$a;

    .line 36
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    :cond_0
    return-void
.end method
