.class public Lcom/coloros/anim/model/EffectiveCompositionCache;
.super Ljava/lang/Object;
.source "EffectiveCompositionCache.java"


# static fields
.field private static final INSTANCE:Lcom/coloros/anim/model/EffectiveCompositionCache;


# instance fields
.field private final cache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/coloros/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/coloros/anim/model/EffectiveCompositionCache;

    invoke-direct {v0}, Lcom/coloros/anim/model/EffectiveCompositionCache;-><init>()V

    sput-object v0, Lcom/coloros/anim/model/EffectiveCompositionCache;->INSTANCE:Lcom/coloros/anim/model/EffectiveCompositionCache;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    return-void
.end method

.method public static getInstance()Lcom/coloros/anim/model/EffectiveCompositionCache;
    .locals 1

    .line 20
    sget-object v0, Lcom/coloros/anim/model/EffectiveCompositionCache;->INSTANCE:Lcom/coloros/anim/model/EffectiveCompositionCache;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/coloros/anim/EffectiveAnimationComposition;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/anim/EffectiveAnimationComposition;

    return-object p0
.end method

.method public put(Ljava/lang/String;Lcom/coloros/anim/EffectiveAnimationComposition;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resize(I)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/anim/model/EffectiveCompositionCache;->cache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method
