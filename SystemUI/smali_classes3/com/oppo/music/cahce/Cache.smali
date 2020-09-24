.class public interface abstract Lcom/oppo/music/cahce/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/cahce/Cache$Entry;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;)Lcom/oppo/music/cahce/Cache$Entry;
.end method

.method public abstract initialize()V
.end method

.method public abstract invalidate(Ljava/lang/String;Z)V
.end method

.method public abstract put(Ljava/lang/String;Lcom/oppo/music/cahce/Cache$Entry;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method
