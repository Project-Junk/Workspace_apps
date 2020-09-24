.class public final Lcom/android/settingslib/n/d;
.super Lcom/android/settingslib/n/f;
.source "InfoMediaDevice.java"


# instance fields
.field private a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/n/d;->a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/android/settingslib/n/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/n/d;->b:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/e$e;->ic_media_device:I

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1061
    iget-object v2, p0, Lcom/android/settingslib/n/d;->a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 2055
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 55
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settingslib/n/d;->a:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 3055
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Z
    .locals 3

    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/n/d;->j()V

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/n/d;->b:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "This is cast device !"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
