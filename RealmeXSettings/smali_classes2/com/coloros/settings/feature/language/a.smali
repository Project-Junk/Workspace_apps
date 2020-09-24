.class public final Lcom/coloros/settings/feature/language/a;
.super Ljava/lang/Object;
.source "LanguageUpdateUtils.java"


# direct methods
.method public static a()Landroid/content/Intent;
    .locals 2

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.LANGUAGE_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "language_new_version_flag"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method
