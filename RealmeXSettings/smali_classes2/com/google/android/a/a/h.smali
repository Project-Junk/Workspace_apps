.class public final Lcom/google/android/a/a/h;
.super Lcom/google/android/a/a/f;
.source "NotificationInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/a;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/google/android/a/a/f;-><init>()V

    const/16 v0, 0x82

    .line 37
    invoke-virtual {p0, v0}, Lcom/google/android/a/a/h;->a(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/a/a/l;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/a/a/f;-><init>(Lcom/google/android/a/a/l;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/a/a/e;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/google/android/a/a/h;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/e;I)V

    return-void
.end method

.method public final a([B)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/google/android/a/a/h;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/a/l;->a([BI)V

    return-void
.end method

.method public final a()[B
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/android/a/a/h;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/a/a/e;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/google/android/a/a/h;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final e()[B
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/android/a/a/h;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v0

    return-object v0
.end method
