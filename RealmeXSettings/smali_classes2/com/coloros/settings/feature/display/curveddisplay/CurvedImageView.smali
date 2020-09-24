.class public Lcom/coloros/settings/feature/display/curveddisplay/CurvedImageView;
.super Landroid/widget/ImageView;
.source "CurvedImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 36
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/curveddisplay/CurvedImageView;->getMeasuredWidth()I

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p2, p1

    const v0, 0x4009fbe7    # 2.156f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/coloros/settings/feature/display/curveddisplay/CurvedImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
