.class public final Lcom/google/android/a/a/d;
.super Lcom/google/android/a/a/f;
.source "DeliveryInd.java"


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/a/a;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/google/android/a/a/f;-><init>()V

    const/16 v0, 0x86

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/android/a/a/d;->a(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/a/a/l;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/a/a/f;-><init>(Lcom/google/android/a/a/l;)V

    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/google/android/a/a/d;->a:Lcom/google/android/a/a/l;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/a/a/l;->b(I)[B

    move-result-object v0

    return-object v0
.end method
