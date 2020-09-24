.class final Lcom/coloros/settingslib/applications/ApplicationsState$12;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1761
    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    check-cast p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 2764
    iget-wide v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    iget-wide v2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2765
    :cond_0
    iget-wide v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    iget-wide v2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 2766
    :cond_1
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
