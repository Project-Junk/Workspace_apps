.class public final Lcom/google/android/setupcompat/b/c;
.super Ljava/lang/Object;
.source "ResourceEntry.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/google/android/setupcompat/b/c;->c:Ljava/lang/String;

    .line 59
    iput p3, p0, Lcom/google/android/setupcompat/b/c;->b:I

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/setupcompat/b/c;
    .locals 4

    const-string v0, "packageName"

    .line 45
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "resourceName"

    .line 46
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "resourceId"

    .line 47
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 53
    new-instance v2, Lcom/google/android/setupcompat/b/c;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/setupcompat/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
