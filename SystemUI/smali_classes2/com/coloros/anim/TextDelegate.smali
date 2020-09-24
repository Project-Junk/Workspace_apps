.class public Lcom/coloros/anim/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final animationView:Lcom/coloros/anim/EffectiveAnimationView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheText:Z

.field private final drawable:Lcom/coloros/anim/EffectiveAnimationDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/coloros/anim/TextDelegate;->cacheText:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/coloros/anim/TextDelegate;->animationView:Lcom/coloros/anim/EffectiveAnimationView;

    .line 30
    iput-object v0, p0, Lcom/coloros/anim/TextDelegate;->drawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationDrawable;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/coloros/anim/TextDelegate;->cacheText:Z

    .line 41
    iput-object p1, p0, Lcom/coloros/anim/TextDelegate;->drawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/coloros/anim/TextDelegate;->animationView:Lcom/coloros/anim/EffectiveAnimationView;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/anim/EffectiveAnimationView;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/coloros/anim/TextDelegate;->cacheText:Z

    .line 35
    iput-object p1, p0, Lcom/coloros/anim/TextDelegate;->animationView:Lcom/coloros/anim/EffectiveAnimationView;

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/coloros/anim/TextDelegate;->drawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    return-void
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method private invalidate()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/coloros/anim/TextDelegate;->animationView:Lcom/coloros/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/coloros/anim/EffectiveAnimationView;->invalidate()V

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/coloros/anim/TextDelegate;->drawable:Lcom/coloros/anim/EffectiveAnimationDrawable;

    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/coloros/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/coloros/anim/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/anim/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-boolean v1, p0, Lcom/coloros/anim/TextDelegate;->cacheText:Z

    if-eqz v1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public invalidateAllText()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    invoke-direct {p0}, Lcom/coloros/anim/TextDelegate;->invalidate()V

    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Lcom/coloros/anim/TextDelegate;->invalidate()V

    return-void
.end method

.method public setCacheText(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/coloros/anim/TextDelegate;->cacheText:Z

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/coloros/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Lcom/coloros/anim/TextDelegate;->invalidate()V

    return-void
.end method
