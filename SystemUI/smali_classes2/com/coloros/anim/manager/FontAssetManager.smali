.class public Lcom/coloros/anim/manager/FontAssetManager;
.super Ljava/lang/Object;
.source "FontAssetManager.java"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private defaultFontFileExtension:Ljava/lang/String;

.field private delegate:Lcom/coloros/anim/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final fontFamilies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/anim/model/MutablePair<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private final tempPair:Lcom/coloros/anim/model/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/anim/model/MutablePair<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/coloros/anim/FontAssetDelegate;)V
    .locals 1
    .param p2    # Lcom/coloros/anim/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/coloros/anim/model/MutablePair;

    invoke-direct {v0}, Lcom/coloros/anim/model/MutablePair;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->tempPair:Lcom/coloros/anim/model/MutablePair;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    const-string v0, ".ttf"

    .line 32
    iput-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/coloros/anim/manager/FontAssetManager;->delegate:Lcom/coloros/anim/FontAssetDelegate;

    .line 36
    instance-of p2, p1, Landroid/view/View;

    if-nez p2, :cond_0

    const-string p1, "EffectiveAnimation"

    const-string p2, "EffectiveAnimationDrawable must be inside of a view for images to work."

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/coloros/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void

    .line 42
    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method private getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/coloros/anim/manager/FontAssetManager;->delegate:Lcom/coloros/anim/FontAssetDelegate;

    if-eqz v1, :cond_1

    .line 81
    invoke-virtual {v1, p1}, Lcom/coloros/anim/FontAssetDelegate;->fetchFont(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/coloros/anim/manager/FontAssetManager;->delegate:Lcom/coloros/anim/FontAssetDelegate;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {v1, p1}, Lcom/coloros/anim/FontAssetDelegate;->getFontPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/anim/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/coloros/anim/manager/FontAssetManager;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 96
    :cond_3
    iget-object p0, p0, Lcom/coloros/anim/manager/FontAssetManager;->fontFamilies:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    const-string p0, "Italic"

    .line 102
    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "Bold"

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 112
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p2

    if-ne p2, p0, :cond_3

    return-object p1

    .line 116
    :cond_3
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->tempPair:Lcom/coloros/anim/model/MutablePair;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/anim/model/MutablePair;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/anim/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/coloros/anim/manager/FontAssetManager;->tempPair:Lcom/coloros/anim/model/MutablePair;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/anim/manager/FontAssetManager;->getFontFamily(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/coloros/anim/manager/FontAssetManager;->typefaceForStyle(Landroid/graphics/Typeface;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 69
    iget-object p2, p0, Lcom/coloros/anim/manager/FontAssetManager;->fontMap:Ljava/util/Map;

    iget-object p0, p0, Lcom/coloros/anim/manager/FontAssetManager;->tempPair:Lcom/coloros/anim/model/MutablePair;

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/coloros/anim/manager/FontAssetManager;->defaultFontFileExtension:Ljava/lang/String;

    return-void
.end method

.method public setDelegate(Lcom/coloros/anim/FontAssetDelegate;)V
    .locals 0
    .param p1    # Lcom/coloros/anim/FontAssetDelegate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lcom/coloros/anim/manager/FontAssetManager;->delegate:Lcom/coloros/anim/FontAssetDelegate;

    return-void
.end method
