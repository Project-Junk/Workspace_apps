.class Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GaussDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConstantState"
.end annotation


# instance fields
.field private mGauss:Landroid/graphics/Bitmap;

.field private final mSrc:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->mSrc:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 193
    new-instance p1, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->mSrc:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 194
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->mGauss:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->setGaussSrc(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public setGaussSrc(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable$ConstantState;->mGauss:Landroid/graphics/Bitmap;

    return-void
.end method
