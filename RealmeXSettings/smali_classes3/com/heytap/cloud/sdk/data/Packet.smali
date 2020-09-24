.class public interface abstract Lcom/heytap/cloud/sdk/data/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


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
.method public abstract getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getKV(Ljava/lang/String;)Lcom/heytap/cloud/sdk/data/Packet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/heytap/cloud/sdk/data/Packet<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getKVAsArray(Ljava/lang/String;)Lcom/heytap/cloud/sdk/data/PacketArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/heytap/cloud/sdk/data/PacketArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getNumber(Ljava/lang/String;)Ljava/lang/Number;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract keySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/Object;)Lcom/heytap/cloud/sdk/data/Packet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/heytap/cloud/sdk/data/Packet<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract putKV(Ljava/lang/String;Lcom/heytap/cloud/sdk/data/Packet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/heytap/cloud/sdk/data/Packet<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract putKVAsArray(Ljava/lang/String;Lcom/heytap/cloud/sdk/data/PacketArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/heytap/cloud/sdk/data/PacketArray<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract putNumber(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract toT()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
