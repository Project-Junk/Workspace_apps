.class public abstract Lcom/coloros/systemui/common/settings/search/AbsSettingsSearchProxy;
.super Ljava/lang/Object;
.source "AbsSettingsSearchProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKeyMap(Landroid/content/Context;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResData(I)Lcom/color/settingslib/provider/ColorSearchIndexableResource;
.end method

.method public abstract getScreenTitle()[I
.end method

.method public abstract getTargetAction()Ljava/lang/String;
.end method

.method public abstract getTargetClass()Ljava/lang/String;
.end method

.method public isEnable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
