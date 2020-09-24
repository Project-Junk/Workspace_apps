.class final Lcom/coloros/settings/feature/storage/b$c;
.super Ljava/lang/Object;
.source "OtherFileScanHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/settings/feature/storage/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 248
    check-cast p1, Lcom/coloros/settings/feature/storage/a/a;

    check-cast p2, Lcom/coloros/settings/feature/storage/a/a;

    .line 1252
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/a/a;->b:J

    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/a/a;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1254
    :cond_0
    iget-wide v0, p1, Lcom/coloros/settings/feature/storage/a/a;->b:J

    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/a/a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1255
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    iget-object p2, p2, Lcom/coloros/settings/feature/storage/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method
