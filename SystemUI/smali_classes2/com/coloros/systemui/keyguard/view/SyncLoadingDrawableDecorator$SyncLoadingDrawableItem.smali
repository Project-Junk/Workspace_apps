.class public Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;
.super Landroid/graphics/drawable/Drawable;
.source "SyncLoadingDrawableDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncLoadingDrawableItem"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDuration:I

.field private mResId:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;I)V
    .locals 1

    const/16 v0, 0x20

    .line 156
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;-><init>(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;II)V

    return-void
.end method

.method public constructor <init>(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;II)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 160
    iput p2, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mResId:I

    .line 161
    iput p3, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mDuration:I

    return-void
.end method

.method private bitmapAvailable()Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private decodeBitmap()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$000(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mResId:I

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$100(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method private getAvailableBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 240
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v1, v1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;

    if-eqz v1, :cond_0

    .line 241
    invoke-direct {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->bitmapAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    iget-object p0, v1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$j3oZ0WZKkmrAyITqRsAZM3dGgTs(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->decodeBitmap()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->bitmapAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->getAvailableBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$008(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)I

    .line 210
    iget v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mDuration:I

    const/16 v2, 0x10

    if-gt v1, v2, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$300(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v1, v3}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$302(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 217
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$300(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 220
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->updateCache(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V

    return-void

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget v1, v1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mBlendColor:I

    if-eqz v1, :cond_4

    .line 224
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$300(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object v4, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget v4, v4, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mBlendColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 226
    :cond_4
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$300(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v3, v3, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mOptions:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    invoke-virtual {v3}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;->getAlpha()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    move-object v0, v1

    :cond_5
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$300(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Landroid/graphics/Paint;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 229
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->updateCache(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V

    .line 231
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_6

    .line 233
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    check-cast p0, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->notifyAnimationDrawableEnd()V

    :cond_6
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mWidth:I

    return p0
.end method

.method public getMinimumHeight()I
    .locals 0

    .line 295
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->getIntrinsicWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public release()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBounds(IIII)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDither(Z)V
    .locals 0

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    return-void
.end method

.method public update(Z)V
    .locals 1

    .line 177
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->bitmapAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 181
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->access$200(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    new-instance v0, Lcom/coloros/systemui/keyguard/view/-$$Lambda$SyncLoadingDrawableDecorator$SyncLoadingDrawableItem$j3oZ0WZKkmrAyITqRsAZM3dGgTs;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/keyguard/view/-$$Lambda$SyncLoadingDrawableDecorator$SyncLoadingDrawableItem$j3oZ0WZKkmrAyITqRsAZM3dGgTs;-><init>(Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->decodeBitmap()V

    :goto_0
    return-void
.end method

.method public updateParameters()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mResId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 199
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mWidth:I

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->this$0:Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator$SyncLoadingDrawableItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    iput p0, v0, Lcom/coloros/systemui/keyguard/view/SyncLoadingDrawableDecorator;->mHeight:I

    :cond_1
    return-void
.end method
