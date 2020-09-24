.class public Lcom/coloros/anim/EffectiveImageAsset;
.super Ljava/lang/Object;
.source "EffectiveImageAsset.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/coloros/anim/EffectiveImageAsset;->width:I

    .line 24
    iput p2, p0, Lcom/coloros/anim/EffectiveImageAsset;->height:I

    .line 25
    iput-object p3, p0, Lcom/coloros/anim/EffectiveImageAsset;->id:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/coloros/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/coloros/anim/EffectiveImageAsset;->dirName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56
    iget-object p0, p0, Lcom/coloros/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDirName()Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/anim/EffectiveImageAsset;->dirName:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/coloros/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/coloros/anim/EffectiveImageAsset;->height:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/anim/EffectiveImageAsset;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 31
    iget p0, p0, Lcom/coloros/anim/EffectiveImageAsset;->width:I

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    iput-object p1, p0, Lcom/coloros/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
