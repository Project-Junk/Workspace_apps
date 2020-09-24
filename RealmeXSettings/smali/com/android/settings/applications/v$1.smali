.class final Lcom/android/settings/applications/v$1;
.super Ljava/lang/Object;
.source "ProcStatsData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/w;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7

    .line 454
    check-cast p1, Lcom/android/settings/applications/w;

    check-cast p2, Lcom/android/settings/applications/w;

    .line 1457
    iget-wide v0, p1, Lcom/android/settings/applications/w;->m:D

    iget-wide v2, p2, Lcom/android/settings/applications/w;->m:D

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    .line 1459
    :cond_0
    iget-wide v2, p1, Lcom/android/settings/applications/w;->m:D

    iget-wide v4, p2, Lcom/android/settings/applications/w;->m:D

    cmpl-double v0, v2, v4

    const/4 v2, -0x1

    if-lez v0, :cond_1

    return v2

    .line 1461
    :cond_1
    iget-wide v3, p1, Lcom/android/settings/applications/w;->j:J

    iget-wide v5, p2, Lcom/android/settings/applications/w;->j:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return v1

    .line 1463
    :cond_2
    iget-wide v0, p1, Lcom/android/settings/applications/w;->j:J

    iget-wide p1, p2, Lcom/android/settings/applications/w;->j:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
