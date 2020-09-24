.class public interface abstract Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator$IPictorialMediatorCallback;
.super Ljava/lang/Object;
.source "PictorialMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPictorialMediatorCallback"
.end annotation


# virtual methods
.method public onMessageViewInfoChanged(Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialMessageViewInfo;)V
    .locals 0

    return-void
.end method

.method public onWallpaperChanged(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialWallpaperInfo;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method
