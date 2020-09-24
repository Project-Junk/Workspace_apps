.class public interface abstract Lcom/oppo/music/service/ISearchCallBack;
.super Ljava/lang/Object;
.source "ISearchCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/service/ISearchCallBack$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSearchSongs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oppo/music/media/Track;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
