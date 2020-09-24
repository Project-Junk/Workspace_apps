.class public Lcom/google/android/a/a/f;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field a:Lcom/google/android/a/a/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    .line 32
    new-instance v0, Lcom/google/android/a/a/l;

    invoke-direct {v0}, Lcom/google/android/a/a/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    return-void
.end method

.method constructor <init>(Lcom/google/android/a/a/l;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    .line 41
    iput-object p1, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/a;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/a/l;->a(II)V

    return-void
.end method

.method public a(Lcom/google/android/a/a/e;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/a/a/l;->a(Lcom/google/android/a/a/e;I)V

    return-void
.end method

.method public final b()I
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->a(I)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/a;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x12

    const/16 v2, 0x8d

    invoke-virtual {v0, v1, v2}, Lcom/google/android/a/a/l;->a(II)V

    return-void
.end method

.method public d()Lcom/google/android/a/a/e;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/android/a/a/f;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->c(I)Lcom/google/android/a/a/e;

    move-result-object v0

    return-object v0
.end method
