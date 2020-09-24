.class public final Lcom/android/settingslib/widget/a;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AdaptiveIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/a$a;
    }
.end annotation


# instance fields
.field a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation
.end field

.field private b:Lcom/android/settingslib/widget/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    new-instance v1, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/AdaptiveIconShapeDrawable;-><init>(Landroid/content/res/Resources;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 48
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    .line 43
    iput v0, p0, Lcom/android/settingslib/widget/a;->a:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/widget/h$b;->dashboard_tile_foreground_image_inset:I

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v3, 0x1

    move-object v2, p0

    move v4, v7

    move v5, v7

    move v6, v7

    .line 54
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/widget/a;->setLayerInset(IIIII)V

    .line 55
    new-instance v0, Lcom/android/settingslib/widget/a$a;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/widget/a$a;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/settingslib/widget/a;->b:Lcom/android/settingslib/widget/a$a;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 94
    iput p1, p0, Lcom/android/settingslib/widget/a;->a:I

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/a;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting background color "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settingslib/widget/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveHomepageIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/widget/a;->b:Lcom/android/settingslib/widget/a$a;

    iput p1, v0, Lcom/android/settingslib/widget/a$a;->c:I

    return-void
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/widget/a;->b:Lcom/android/settingslib/widget/a$a;

    return-object v0
.end method
