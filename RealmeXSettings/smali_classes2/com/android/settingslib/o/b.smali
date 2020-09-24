.class public Lcom/android/settingslib/o/b;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesBase.java"

# interfaces
.implements Lcom/android/settingslib/o/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "STUB!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/Class;)V
    .locals 1

    .line 32
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "STUB!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
