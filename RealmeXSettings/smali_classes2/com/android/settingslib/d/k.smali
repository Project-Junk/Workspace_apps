.class public final Lcom/android/settingslib/d/k;
.super Ljava/lang/Object;
.source "HearingAidDeviceManager.java"


# instance fields
.field final a:Lcom/android/settingslib/d/q;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settingslib/d/q;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/d/q;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/g;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 41
    iput-object p2, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    return-void
.end method

.method static a(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method final a(Landroid/bluetooth/BluetoothDevice;)J
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 2162
    iget-object v0, v0, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 2449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Lcom/android/settingslib/d/l;->f(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method final a(Lcom/android/settingslib/d/g;)Lcom/android/settingslib/d/g;
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 5230
    iget-wide v2, v1, Lcom/android/settingslib/d/g;->c:J

    .line 208
    invoke-static {v2, v3}, Lcom/android/settingslib/d/k;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6187
    iget-object v2, v1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v2, p1}, Lcom/android/settingslib/d/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final b(J)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 115
    iget-object v3, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/d/g;

    .line 3230
    iget-wide v4, v3, Lcom/android/settingslib/d/g;->c:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    if-ne v2, v1, :cond_0

    move v2, v0

    goto :goto_2

    .line 134
    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/d/g;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/d/g;

    move-object v1, v3

    goto :goto_1

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    move v2, v0

    move-object v0, v3

    .line 4191
    :goto_1
    iput-object v0, v1, Lcom/android/settingslib/d/g;->o:Lcom/android/settingslib/d/g;

    .line 145
    iget-object v1, p0, Lcom/android/settingslib/d/k;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHiSyncIdChanged: removed from UI device ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", with hiSyncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingAidDeviceManager"

    .line 4220
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/android/settingslib/d/k;->a:Lcom/android/settingslib/d/q;

    .line 5158
    iget-object p1, p1, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 148
    invoke-virtual {p1, v0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/g;)V

    return-void

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
