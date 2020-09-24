.class final Lcom/android/settings/applications/ProcessStatsDetail$3;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/w$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 324
    check-cast p1, Lcom/android/settings/applications/w$a;

    check-cast p2, Lcom/android/settings/applications/w$a;

    .line 1327
    iget-wide v0, p1, Lcom/android/settings/applications/w$a;->d:J

    iget-wide v2, p2, Lcom/android/settings/applications/w$a;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1329
    :cond_0
    iget-wide v0, p1, Lcom/android/settings/applications/w$a;->d:J

    iget-wide p1, p2, Lcom/android/settings/applications/w$a;->d:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
