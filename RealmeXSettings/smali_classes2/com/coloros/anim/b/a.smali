.class public final Lcom/coloros/anim/b/a;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field public final a:Lcom/coloros/anim/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/c/i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/anim/c/i<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/content/res/AssetManager;

.field public e:Lcom/coloros/anim/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/coloros/anim/i;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/coloros/anim/c/i;

    invoke-direct {v0}, Lcom/coloros/anim/c/i;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b/a;->a:Lcom/coloros/anim/c/i;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b/a;->b:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/b/a;->c:Ljava/util/Map;

    const-string v0, ".ttf"

    .line 32
    iput-object v0, p0, Lcom/coloros/anim/b/a;->f:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/coloros/anim/b/a;->e:Lcom/coloros/anim/i;

    .line 36
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "EffectiveAnimation"

    const-string p2, "EffectiveAnimationDrawable must be inside of a view for images to work."

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/coloros/anim/b/a;->d:Landroid/content/res/AssetManager;

    return-void

    .line 42
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/b/a;->d:Landroid/content/res/AssetManager;

    return-void
.end method
