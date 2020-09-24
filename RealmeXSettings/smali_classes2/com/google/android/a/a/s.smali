.class public final Lcom/google/android/a/a/s;
.super Lcom/google/android/a/a/g;
.source "RetrieveConf.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/a;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/android/a/a/g;-><init>()V

    const/16 v0, 0x84

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/a/a/s;->a(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/j;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/a/a/g;-><init>(Lcom/google/android/a/a/l;Lcom/google/android/a/a/j;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/a/a/e;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/google/android/a/a/s;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/e;I)V

    return-void
.end method

.method public final a()[B
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/a/a/s;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/a/a/e;
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/android/a/a/s;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v0

    return-object v0
.end method
