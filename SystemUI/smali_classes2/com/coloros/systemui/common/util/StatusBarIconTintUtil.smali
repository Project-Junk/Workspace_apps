.class public Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;
.super Ljava/lang/Object;
.source "StatusBarIconTintUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/common/util/StatusBarIconTintUtil$ImmerseStatusBar;
    }
.end annotation


# static fields
.field public static final STATUS_BAR_MODE_BLACK:I = 0x1

.field public static final STATUS_BAR_MODE_WHITE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBarIconTintUtil"

.field private static sStatusBarMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyTintBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    sget v0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    if-nez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f0601de

    .line 199
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 200
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 202
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 203
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p0, 0x0

    .line 204
    invoke-virtual {v1, p1, p0, p0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const p2, 0x7f0601de

    .line 212
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 213
    :goto_0
    sget v0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    if-nez v0, :cond_2

    const p2, 0x7f0601df

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 215
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 216
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 217
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 218
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, p2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p2, 0x0

    .line 219
    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 150
    invoke-static {p0, p1}, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->applyTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->applyTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 172
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 173
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-object p1

    .line 177
    :cond_1
    sget p2, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    if-nez p2, :cond_2

    const p2, 0x7f0601df

    .line 178
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0601de

    .line 180
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 182
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintImageView(Landroid/content/Context;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    sget v0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    if-nez v0, :cond_1

    const v0, 0x7f0601df

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0601de

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->postInvalidate()V

    return-object p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintImageView(Landroid/content/Context;Landroid/widget/ImageView;I)Landroid/widget/ImageView;
    .locals 0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 123
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 124
    invoke-virtual {p1}, Landroid/widget/ImageView;->postInvalidate()V

    return-object p1

    .line 128
    :cond_1
    sget p2, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    if-nez p2, :cond_2

    const p2, 0x7f0601df

    .line 129
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0601de

    .line 131
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 133
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->postInvalidate()V

    return-object p1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyTintTextView(Landroid/content/Context;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 79
    :cond_0
    sget v0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    if-nez v0, :cond_1

    const v0, 0x7f0601df

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0601de

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-object p1
.end method

.method public static getStatusBarMode()I
    .locals 1

    .line 233
    sget v0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    return v0
.end method

.method public static getTextColorId()I
    .locals 3

    .line 58
    sget v0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    const v1, 0x7f0601df

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const v1, 0x7f0601de

    :cond_1
    :goto_0
    return v1
.end method

.method public static setStatusBarMode(I)V
    .locals 3

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusBarMode ---- sStatusBarMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "StatusBarIconTintUtil"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sput p0, Lcom/coloros/systemui/common/util/StatusBarIconTintUtil;->sStatusBarMode:I

    return-void
.end method
