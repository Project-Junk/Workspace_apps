.class public Lcom/android/settingslib/search/SearchIndexableResourcesBase;
.super Ljava/lang/Object;
.source "SearchIndexableResourcesBase.java"

# interfaces
.implements Lcom/android/settingslib/search/SearchIndexableResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addIndex(Ljava/lang/Class;)V
    .locals 0

    .line 32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "STUB!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProviderValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "STUB!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
