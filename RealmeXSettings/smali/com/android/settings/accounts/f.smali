.class public final Lcom/android/settings/accounts/f;
.super Ljava/lang/Object;
.source "ProviderEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/accounts/f;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/accounts/f;->a:Ljava/lang/CharSequence;

    .line 27
    iput-object p2, p0, Lcom/android/settings/accounts/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 21
    check-cast p1, Lcom/android/settings/accounts/f;

    .line 1031
    iget-object v0, p0, Lcom/android/settings/accounts/f;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1034
    :cond_0
    iget-object p1, p1, Lcom/android/settings/accounts/f;->a:Ljava/lang/CharSequence;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1037
    :cond_1
    invoke-static {v0, p1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method
