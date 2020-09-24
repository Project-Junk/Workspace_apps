.class public Lcom/coloros/systemui/keyguard/wallpaper/PubResource;
.super Ljava/lang/Object;
.source "PubResource.java"


# static fields
.field private static final RECYCLED_BITMAPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final RECYCLE_BIN_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PubResource"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToRecycleBin(Landroid/content/Context;Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;)V
    .locals 3

    .line 33
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    if-eqz p1, :cond_3

    .line 36
    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;->getSrc()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getKeyguardUtils(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/util/KeyguardUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->getRealScreenHeight()I

    move-result p0

    if-ne v1, p0, :cond_0

    .line 41
    sget-object p0, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "PubResource"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToRecycleBin fail, src.isRecycled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "PubResource"

    const-string p1, "addToRecycleBin fail, src is null "

    .line 47
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "PubResource"

    const-string p1, "addToRecycleBin out of RECYCLED_BITMAPS size, don\'t add. "

    .line 52
    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static fetchOneFromRecycleBin()Landroid/graphics/Bitmap;
    .locals 4

    .line 59
    sget-object v0, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    sget-object v1, Lcom/coloros/systemui/keyguard/wallpaper/PubResource;->RECYCLED_BITMAPS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 73
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
