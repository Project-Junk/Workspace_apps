.class public Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;
.super Ljava/lang/Object;
.source "ColorTileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;,
        Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "TileQueryHelper"


# instance fields
.field private final mAllTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBgHandler:Landroid/os/Handler;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentSettingSpecs:Ljava/lang/String;

.field private final mCurrentSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultTiles:Ljava/lang/String;

.field private mFinished:Z

.field private final mListener:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mStockSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStockTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentTiles:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockTiles:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentSpecs:Landroid/util/ArraySet;

    .line 67
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockSpecs:Landroid/util/ArraySet;

    .line 78
    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mListener:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;

    .line 80
    new-instance p1, Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mBgHandler:Landroid/os/Handler;

    .line 81
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mMainHandler:Landroid/os/Handler;

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    const p2, 0x7f110704

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mDefaultTiles:Ljava/lang/String;

    return-void
.end method

.method private addTileList(Lcom/android/systemui/qs/QSTileHost;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-static {}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->getAppQuickSettingsBlackList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 264
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance p2, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;

    invoke-direct {p2, p0, v0, p3}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$8pdUbR7NwZidsOLbNGQIylwQYPc;-><init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/util/ArrayList;Z)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addCurrentTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "TileQueryHelper"

    const-string v2, "addCurrentTiles start "

    .line 128
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$cnwSIgkl3BcsQn134VJjZUFRU60;-><init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addStockAndPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 10

    const-string v0, "Statusbar"

    const-string v1, "TileQueryHelper"

    const-string v2, "addStockAndPackageTiles start "

    .line 151
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f110708

    goto :goto_0

    :cond_0
    const v1, 0x7f110707

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentSettingSpecs:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mDefaultTiles:Ljava/lang/String;

    :cond_1
    const-string v2, ","

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 164
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 165
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v3, v7

    const-string v9, "custom("

    .line 166
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 167
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 172
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 174
    array-length v2, v0

    move v5, v6

    :goto_2
    if-ge v5, v2, :cond_5

    aget-object v7, v0, v5

    .line 175
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 176
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 179
    :cond_5
    invoke-direct {p0, p1, v3, v6}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->addTileList(Lcom/android/systemui/qs/QSTileHost;Ljava/util/ArrayList;Z)V

    .line 181
    iget-object p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$HWwMvrrLHPV47erebrD4cLxU1X0;-><init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V
    .locals 3

    if-eqz p5, :cond_0

    .line 292
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p5, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockSpecs:Landroid/util/ArraySet;

    .line 293
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 296
    :cond_2
    new-instance v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;

    invoke-direct {v0}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;-><init>()V

    .line 297
    iput-object p3, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 298
    iget-object v1, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 299
    iget-object v1, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    const-class v2, Landroid/widget/Button;

    .line 300
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 301
    iput-object p1, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->spec:Ljava/lang/String;

    .line 302
    iget-object v1, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p4, :cond_3

    iget-object p3, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_3
    const/4 p2, 0x0

    :cond_4
    iput-object p2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 304
    iput-boolean p4, v0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;->isSystem:Z

    if-eqz p5, :cond_5

    .line 306
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentTiles:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentSpecs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_5
    iget-object p2, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockTiles:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockSpecs:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected createStateAndAddTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 6

    .line 316
    new-instance v3, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v3}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v0, 0x1

    .line 317
    iput v0, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 318
    iput-object p3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 319
    iput-object p3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 320
    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {p3, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object p3, v3, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 321
    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V

    return-void
.end method

.method public getAllTiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileInfo;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    .line 352
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 353
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 103
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 104
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 109
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "TileQueryHelper"

    const-string v2, "Statusbar"

    if-nez v0, :cond_1

    .line 111
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "icon is null, info = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f0811bb

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f070755

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 118
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIcon densityDpi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " scaledDensity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " density="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " mCustomTileIconSize="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {v0, p2, p1, p1}, Lcom/coloros/systemui/common/util/StatusBarUtils;->compoundBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    .line 343
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mFinished:Z

    return p0
.end method

.method public synthetic lambda$addCurrentTiles$0$ColorTileQueryHelper(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 11

    const-string v0, "TileQueryHelper"

    const-string v1, "Statusbar"

    const-string v2, "addCurrentTiles bg start "

    .line 130
    invoke-static {v1, v0, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 134
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v8

    .line 136
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 137
    iput v3, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 138
    instance-of v3, v2, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v3, :cond_0

    .line 139
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileIconSupplier()Ljava/util/function/Supplier;

    move-result-object v3

    iput-object v3, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    goto :goto_1

    .line 141
    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, v8, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 143
    :goto_1
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p0, v3}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->notifyTilesChanged(Z)V

    const-string p0, "addCurrentTiles bg end "

    .line 146
    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$addStockAndPackageTiles$1$ColorTileQueryHelper(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "TileQueryHelper"

    const-string v3, "Statusbar"

    const-string v0, "addStockAndPackageTiles bg start "

    .line 182
    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 184
    new-instance v11, Landroid/content/pm/OppoPackageManager;

    iget-object v0, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/content/pm/OppoPackageManager;-><init>(Landroid/content/Context;)V

    .line 186
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isDisableAppSupport()Z

    move-result v0

    const-string v5, "android.service.quicksettings.action.QS_TILE"

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 189
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 187
    invoke-virtual {v4, v0, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 191
    invoke-virtual {v4, v0, v12, v5}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 197
    :goto_0
    iget-object v5, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f110708

    goto :goto_1

    :cond_1
    const v6, 0x7f110707

    :goto_1
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 200
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 201
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isDisableAppSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    :try_start_0
    iget-object v0, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v11, v10, v0}, Landroid/content/pm/OppoPackageManager;->getOppoFreezePackageState(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOppoFreezePackageState RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v12

    :goto_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unfreeze Package:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_1
    iget-object v0, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v5, v11

    move-object v6, v10

    move-object v12, v10

    move-object v10, v0

    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroid/content/pm/OppoPackageManager;->oppoUnFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v12, v10

    .line 214
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oppoUnFreezePackage RemoteException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_2
    move-object v12, v10

    .line 219
    :goto_5
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v12, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query Spec ===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_7

    .line 226
    :cond_3
    iget-object v5, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 227
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, p1

    .line 228
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/coloros/systemui/qs/AppQsTileBlackList;->getAppQuickSettingsBlackList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_7

    .line 231
    :cond_4
    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v7, v7, Landroid/content/pm/ServiceInfo;->icon:I

    if-nez v7, :cond_5

    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v7, :cond_5

    goto :goto_7

    .line 234
    :cond_5
    iget-object v7, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v8, "android.permission.BIND_QUICK_SETTINGS_TILE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_7

    .line 237
    :cond_6
    iget-object v7, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7, v15}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->handleIcon(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_7

    .line 241
    :cond_7
    iget-object v8, v1, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06032d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 243
    iget-object v8, v15, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v8, v4}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 244
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_8
    const-string v8, "null"

    :goto_6
    invoke-virtual {v1, v0, v7, v8, v5}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->createStateAndAddTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_9
    :goto_7
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_a
    move v5, v12

    .line 248
    invoke-virtual {v1, v5}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->notifyTilesChanged(Z)V

    const-string v0, "addStockAndPackageTiles bg end "

    .line 249
    invoke-static {v3, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$addTileList$2$ColorTileQueryHelper(Ljava/util/ArrayList;Z)V
    .locals 8

    .line 274
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 275
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v5

    .line 277
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    .line 278
    iput v1, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 279
    instance-of v1, v0, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileIconSupplier()Ljava/util/function/Supplier;

    move-result-object v1

    iput-object v1, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    goto :goto_1

    .line 282
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDefaultIcon()Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v1

    iput-object v1, v5, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 284
    :goto_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V

    .line 285
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method public synthetic lambda$notifyTilesChanged$3$ColorTileQueryHelper(Ljava/util/ArrayList;)V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mListener:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;->onCurrentTilesChanged(Ljava/util/List;)V

    return-void
.end method

.method public synthetic lambda$notifyTilesChanged$4$ColorTileQueryHelper(Ljava/util/ArrayList;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mListener:Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;

    invoke-interface {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper$ColorTileStateListener;->onStockTilesChanged(Ljava/util/List;)V

    return-void
.end method

.method protected notifyTilesChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mFinished:Z

    .line 327
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentTiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 328
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$n8XgxEr3947bZd1jnOVVMK-6XWU;-><init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 330
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockTiles:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 333
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mAllTiles:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockTiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$9rQV_5k9uYYvJlgBLX0Vpv0nH0g;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/customize/-$$Lambda$ColorTileQueryHelper$9rQV_5k9uYYvJlgBLX0Vpv0nH0g;-><init>(Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public queryTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "TileQueryHelper"

    const-string v2, "QueryTiles start"

    .line 86
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mStockSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mFinished:Z

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "sysui_qs_tiles"

    .line 92
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->mCurrentSettingSpecs:Ljava/lang/String;

    .line 96
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->addCurrentTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/customize/ColorTileQueryHelper;->addStockAndPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method
