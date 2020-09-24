.class public Lcom/android/settingslib/suggestions/SuggestionLoaderCompat;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "SuggestionLoaderCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/List<",
        "Landroid/service/settings/suggestions/Suggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/android/settingslib/suggestions/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/a;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionLoaderCompat;->a:Lcom/android/settingslib/suggestions/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 4

    .line 1046
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionLoaderCompat;->a:Lcom/android/settingslib/suggestions/a;

    invoke-virtual {v0}, Lcom/android/settingslib/suggestions/a;->c()Ljava/util/List;

    move-result-object v0

    const-string v1, "SuggestionLoader"

    if-nez v0, :cond_0

    const-string v2, "data is null"

    .line 1048
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1050
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method
