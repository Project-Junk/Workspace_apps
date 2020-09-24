.class public final Lcom/google/android/setupcompat/internal/k;
.super Ljava/lang/Object;
.source "Validations.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    const/4 v0, 0x1

    .line 42
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "%s cannot be null."

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/setupcompat/internal/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, p3, :cond_0

    if-lt p0, p2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    const/4 v1, 0x3

    .line 1029
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 1031
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Length of %s should be in the range [%s-%s]"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-static {p0, p1}, Lcom/google/android/setupcompat/internal/g;->a(ZLjava/lang/String;)V

    return-void
.end method
