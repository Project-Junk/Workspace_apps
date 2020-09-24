.class public Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo$SkipStrategy;
.super Ljava/lang/Object;
.source "PictorialWallpaperInfo.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkipStrategy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 463
    const-class p0, Lcom/coloros/systemui/keyguard/wallpaper/GaussDrawable;

    if-eq p0, p1, :cond_1

    const-class p0, Landroid/graphics/drawable/Drawable;

    if-eq p0, p1, :cond_1

    const-class p0, Landroid/content/Intent;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 1

    .line 453
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mIntent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 454
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mMoreButtonBg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 455
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mMoreButtonPressedBg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 456
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mIsNeedUpdateView"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 457
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mWallpaperDrawable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 458
    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mContentVisibility"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
