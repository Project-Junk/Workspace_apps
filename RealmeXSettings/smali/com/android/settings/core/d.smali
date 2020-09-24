.class public interface abstract Lcom/android/settings/core/d;
.super Ljava/lang/Object;
.source "PreferenceControllerMixin.java"


# virtual methods
.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    instance-of v0, p0, Lcom/android/settingslib/core/a;

    if-eqz v0, :cond_2

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/android/settingslib/core/a;

    invoke-virtual {v0}, Lcom/android/settingslib/core/a;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    invoke-virtual {v0}, Lcom/android/settingslib/core/a;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "PrefControllerMixin"

    if-eqz v1, :cond_0

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping updateNonIndexableKeys due to empty key "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 48
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping updateNonIndexableKeys, key already in list. "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 53
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
