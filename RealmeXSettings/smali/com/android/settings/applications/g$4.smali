.class final Lcom/android/settings/applications/g$4;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/g;
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

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .line 290
    check-cast p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    check-cast p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 1293
    invoke-static {p1}, Lcom/android/settings/applications/g;->d(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object v0

    .line 1294
    invoke-static {p2}, Lcom/android/settings/applications/g;->d(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/applications/g$a;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    return v3

    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 1298
    iget-wide v4, v0, Lcom/android/settings/applications/g$a;->c:J

    iget-wide v6, v1, Lcom/android/settings/applications/g$a;->c:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    return v3

    .line 1299
    :cond_2
    iget-wide v3, v0, Lcom/android/settings/applications/g$a;->c:J

    iget-wide v0, v1, Lcom/android/settings/applications/g$a;->c:J

    cmp-long v0, v3, v0

    if-lez v0, :cond_3

    return v2

    .line 1301
    :cond_3
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
