.class public Lcom/color/compat/content/pm/PackageParserNative;
.super Ljava/lang/Object;
.source "PackageParserNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/compat/content/pm/PackageParserNative$PackageNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageParserNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectCertificates(Lcom/color/compat/content/pm/PackageParserNative$PackageNative;Z)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    if-eqz p0, :cond_1

    .line 113
    invoke-static {p0}, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->access$200(Lcom/color/compat/content/pm/PackageParserNative$PackageNative;)Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;->access$200(Lcom/color/compat/content/pm/PackageParserNative$PackageNative;)Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/color/inner/content/pm/PackageParserWrapper;->collectCertificates(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageParserNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static parsePackage(Ljava/io/File;I)Lcom/color/compat/content/pm/PackageParserNative$PackageNative;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-static {p0, p1}, Lcom/color/inner/content/pm/PackageParserWrapper;->parsePackage(Ljava/io/File;I)Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;

    move-result-object p0

    .line 91
    new-instance p1, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;

    invoke-direct {p1, p0, v0}, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;-><init>(Lcom/color/inner/content/pm/PackageParserWrapper$PackageWrapper;Lcom/color/compat/content/pm/PackageParserNative$1;)V

    return-object p1

    .line 93
    :cond_0
    invoke-static {}, Lcom/color/util/VersionUtils;->isP()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    .line 95
    invoke-virtual {v1, p0, p1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object p0

    .line 96
    new-instance p1, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;

    invoke-direct {p1, p0, v0}, Lcom/color/compat/content/pm/PackageParserNative$PackageNative;-><init>(Landroid/content/pm/PackageParser$Package;Lcom/color/compat/content/pm/PackageParserNative$1;)V

    return-object p1

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

    const-string p1, "PackageParserNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
