.class public Lcom/color/compat/content/res/ConfigurationNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessibleChanged(Landroid/content/res/Configuration;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getAccessibleChanged(Landroid/content/res/Configuration;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static getFlipFont(Landroid/content/res/Configuration;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getThemeChanged(Landroid/content/res/Configuration;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getThemeChangedFlags(Landroid/content/res/Configuration;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getUxIconConfig(Landroid/content/res/Configuration;)J
    .locals 4

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public static setAccessibleChanged(Landroid/content/res/Configuration;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/content/res/ConfigurationWrapper;->setAccessibleChanged(Landroid/content/res/Configuration;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setThemeChanged(Landroid/content/res/Configuration;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/content/res/ConfigurationWrapper;->setThemeChanged(Landroid/content/res/Configuration;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setThemeChangedFlags(Landroid/content/res/Configuration;J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/res/ConfigurationWrapper;->setThemeChangedFlags(Landroid/content/res/Configuration;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setUxIconConfig(Landroid/content/res/Configuration;J)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/res/ConfigurationWrapper;->setUxIconConfig(Landroid/content/res/Configuration;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ConfigurationNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
