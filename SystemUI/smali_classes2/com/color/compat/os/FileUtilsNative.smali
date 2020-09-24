.class public Lcom/color/compat/os/FileUtilsNative;
.super Ljava/lang/Object;
.source "FileUtilsNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileUtilsNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 58
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0, p1}, Lcom/color/inner/os/FileUtilsWrapper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    goto :goto_0

    .line 63
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .line 42
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Lcom/color/inner/os/FileUtilsWrapper;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0

    .line 47
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 130
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {p0, p1, p2}, Lcom/color/inner/os/FileUtilsWrapper;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 133
    :cond_0
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 75
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/FileUtilsWrapper;->setPermissions(Ljava/io/File;III)I

    move-result p0

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result p0

    goto :goto_0

    .line 80
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 110
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/FileUtilsWrapper;->setPermissions(Ljava/io/FileDescriptor;III)I

    move-result p0

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    move-result p0

    goto :goto_0

    .line 115
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 93
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/os/FileUtilsWrapper;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {p0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    goto :goto_0

    .line 98
    :cond_1
    new-instance p0, Lcom/color/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/color/util/UnSupportedApiVersionException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FileUtilsNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method
