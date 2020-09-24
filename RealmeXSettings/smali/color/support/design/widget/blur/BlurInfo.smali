.class public Lcolor/support/design/widget/blur/BlurInfo;
.super Ljava/lang/Object;
.source "BlurInfo.java"


# instance fields
.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mScale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlurBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 15
    iget-object v0, p0, Lcolor/support/design/widget/blur/BlurInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .line 23
    iget v0, p0, Lcolor/support/design/widget/blur/BlurInfo;->mScale:I

    return v0
.end method

.method public setBlurBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcolor/support/design/widget/blur/BlurInfo;->mBlurBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setScale(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcolor/support/design/widget/blur/BlurInfo;->mScale:I

    return-void
.end method
