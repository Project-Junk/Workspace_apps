.class public Lcom/coloros/wallpapersetter/ImageProcess;
.super Ljava/lang/Object;
.source "ImageProcess.java"


# static fields
.field public static final BLACK:I = -0x989899

.field public static final BRIGHT_WALLPAPER_BRIGHTNESS:I = 0x258

.field private static final DEBUG:Z

.field public static final POSITION_B:I = 0x2

.field public static final POSITION_G:I = 0x1

.field public static final POSITION_R:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WS.ImageProcess"

.field private static final VALIDITY_B:I = 0xb4

.field private static final VALIDITY_G:I = 0xb4

.field private static final VALIDITY_R:I = 0xb4

.field public static final WHITE:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    sget-boolean v0, Lcom/coloros/wallpapersetter/BaseUtils;->DEBUG:Z

    sput-boolean v0, Lcom/coloros/wallpapersetter/ImageProcess;->DEBUG:Z

    const-string v0, "coloros_image_process"

    .line 37
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateTextColor(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I
    .locals 8

    .line 41
    invoke-static {p0, p1}, Lcom/coloros/wallpapersetter/ImageProcess;->checkArguments(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    .line 44
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 45
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v2, p0

    move v7, p2

    invoke-static/range {v2 .. v7}, Lcom/coloros/wallpapersetter/ImageProcess;->calculateTextColorNative(Landroid/graphics/Bitmap;IIIII)[I

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/coloros/wallpapersetter/ImageProcess;->checkWhite([I)Z

    move-result p0

    if-nez p0, :cond_1

    const p0, -0x989899

    return p0

    :cond_1
    return v1

    nop

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method public static native calculateTextColorNative(Landroid/graphics/Bitmap;IIIII)[I
.end method

.method private static checkArguments(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Z
    .locals 4

    const-string v0, "WS.ImageProcess"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-direct {v2, v1, v1, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 62
    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 65
    :cond_1
    sget-boolean p0, Lcom/coloros/wallpapersetter/ImageProcess;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "Arguments illegal, rect isn\'t in bitmap\'s region."

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/coloros/wallpapersetter/ImageProcess;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "Arguments illegal, bitmap or rect useless."

    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 70
    sget-boolean p0, Lcom/coloros/wallpapersetter/ImageProcess;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Arguments illegal, do nothing about calculate, we will return Default Color."

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v1
.end method

.method private static checkWhite([I)Z
    .locals 4

    const/4 v0, 0x0

    .line 77
    aget v1, p0, v0

    const/16 v2, 0xb4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    aget v1, p0, v3

    if-lt v1, v2, :cond_1

    :cond_0
    aget v1, p0, v0

    aget v2, p0, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget p0, p0, v2

    add-int/2addr v1, p0

    const/16 p0, 0x258

    if-ge v1, p0, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    return v0
.end method

.method public static native getBitmapBrightnessValue(Landroid/graphics/Bitmap;)I
.end method

.method public static native getBitmapBrightnessValue(Landroid/graphics/Bitmap;IIII)I
.end method

.method public static native getBitmapBrightnessValue([IIIIIII)I
.end method

.method public static native saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method
