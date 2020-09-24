.class public interface abstract Lcom/heytap/cloud/sdk/data/PacketArray;
.super Ljava/lang/Object;
.source "PacketArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/heytap/cloud/sdk/data/Packet;)V
.end method

.method public abstract get(I)Lcom/heytap/cloud/sdk/data/Packet;
.end method

.method public abstract parse(Ljava/lang/Object;)Lcom/heytap/cloud/sdk/data/PacketArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/heytap/cloud/sdk/data/PacketArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/heytap/cloud/sdk/data/Packet;)Z
.end method

.method public abstract size()I
.end method

.method public abstract toT()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
