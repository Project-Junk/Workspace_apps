.class Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;
.super Ljava/lang/Object;
.source "MapField.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MapField$MutatabilityAwareMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MutatabilityAwareIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;


# direct methods
.method constructor <init>(Lcom/google/protobuf/MutabilityOracle;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/MutabilityOracle;",
            "Ljava/util/Iterator<",
            "TE;>;)V"
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-object p1, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    .line 598
    iput-object p2, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 608
    iget-object p0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->mutabilityOracle:Lcom/google/protobuf/MutabilityOracle;

    invoke-interface {v0}, Lcom/google/protobuf/MutabilityOracle;->ensureMutable()V

    .line 614
    iget-object p0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/google/protobuf/MapField$MutatabilityAwareMap$MutatabilityAwareIterator;->delegate:Ljava/util/Iterator;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
