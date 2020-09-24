.class public Lcom/color/compat/content/ContextNative;
.super Ljava/lang/Object;
.source "ContextNative.java"


# static fields
.field public static STATUS_BAR_SERVICE:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContextNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "statusbar"

    if-eqz v0, :cond_0

    .line 66
    :try_start_1
    sput-object v1, Lcom/color/compat/content/ContextNative;->STATUS_BAR_SERVICE:Ljava/lang/String;

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    sput-object v1, Lcom/color/compat/content/ContextNative;->STATUS_BAR_SERVICE:Ljava/lang/String;

    return-void

    .line 70
    :cond_1
    new-instance v0, Lcom/color/util/a;

    invoke-direct {v0}, Lcom/color/util/a;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCredentialProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 189
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/color/inner/content/ContextWrapper;->createCredentialProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lcom/color/util/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 194
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 146
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0}, Lcom/color/inner/content/ContextWrapper;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/color/util/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    .line 151
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextNative"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSharedPreferencesPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .line 220
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {p0, p1}, Lcom/color/inner/content/ContextWrapper;->getSharedPreferencesPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 222
    :cond_0
    invoke-static {}, Lcom/color/util/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSharedPreferencesPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 225
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 125
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0, p1, p2, p3}, Lcom/color/inner/content/ContextWrapper;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    .line 130
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 93
    :try_start_0
    invoke-static {}, Lcom/color/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/ContextWrapper;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/color/util/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 98
    :cond_1
    new-instance p0, Lcom/color/util/a;

    invoke-direct {p0}, Lcom/color/util/a;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextNative"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
