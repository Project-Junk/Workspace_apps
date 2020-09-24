.class public final Landroidx/core/content/SharedPreferencesKt;
.super Ljava/lang/Object;
.source "SharedPreferences.kt"


# direct methods
.method public static final edit(Landroid/content/SharedPreferences;ZLa/d/a/b;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Z",
            "La/d/a/b<",
            "-",
            "Landroid/content/SharedPreferences$Editor;",
            "La/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p0, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "editor"

    .line 44
    invoke-static {p0, v0}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 46
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 48
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic edit$default(Landroid/content/SharedPreferences;ZLa/d/a/b;ILjava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string p3, "$receiver"

    .line 40
    invoke-static {p0, p3}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {p2, p3}, La/d/b/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p3, "editor"

    .line 53
    invoke-static {p0, p3}, La/d/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, La/d/a/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    .line 57
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
