.class public Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;
.super Ljava/lang/Object;
.source "ImageClockHelper.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNumHeight:F

.field private mNumIds:[I

.field private mNumVerticalPadding:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mContext:Landroid/content/Context;

    .line 44
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07016f

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumHeight:F

    const v0, 0x7f07016d

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumVerticalPadding:F

    const/16 p1, 0xa

    .line 47
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f08094a
        0x7f08094b
        0x7f08094c
        0x7f08094d
        0x7f08094e
        0x7f08094f
        0x7f080950
        0x7f080951
        0x7f080952
        0x7f080953
    .end array-data
.end method

.method private getDrawableByChar(C)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumIds:[I

    sub-int/2addr p1, v0

    aget p1, v1, p1

    .line 106
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->scale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;
    .locals 2

    .line 32
    sget-object v0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->sInstance:Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->sInstance:Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->sInstance:Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->sInstance:Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;

    return-object p0
.end method

.method private scale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 96
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 97
    iget v0, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumHeight:F

    iget p0, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumVerticalPadding:F

    sub-float/2addr v0, p0

    .line 98
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    .line 99
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int p0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    return-object p1
.end method


# virtual methods
.method public setNumHeight(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumHeight:F

    return-void
.end method

.method public setTextImg(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getDrawableByChar(C)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 74
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 75
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-direct {p0, p2}, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->getDrawableByChar(C)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 78
    :goto_1
    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTextPoint(Landroid/widget/TextView;)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080954

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 89
    iget v1, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumHeight:F

    iget p0, p0, Lcom/coloros/systemui/keyguard/clock/ImageClockHelper;->mNumVerticalPadding:F

    sub-float/2addr v1, p0

    .line 90
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p0

    float-to-int p0, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
