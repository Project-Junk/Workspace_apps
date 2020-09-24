.class public final Lcom/coloros/settings/utils/v;
.super Ljava/lang/Object;
.source "Iris5Util.java"


# direct methods
.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "osie_iris5_switch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static a(ZZLandroid/content/Context;)V
    .locals 5

    .line 112
    invoke-static {p2}, Lcom/coloros/settings/utils/v;->j(Landroid/content/Context;)I

    move-result v0

    .line 113
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "coloros_screen_resolution_adjust"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez p0, :cond_1

    if-eq v0, v1, :cond_1

    .line 116
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;I)V

    .line 117
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/utils/v$1;

    invoke-direct {v1, p2, v0}, Lcom/coloros/settings/utils/v$1;-><init>(Landroid/content/Context;I)V

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x1388

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.pixelworks.feature.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "osie_motion_value"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "coloros_screen_resolution_adjust"

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/16 p0, 0x1a4

    .line 69
    invoke-static {p0}, Lcom/android/settingslib/f/b;->a(I)V

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/settingslib/f/b;->a()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "osie_iris5_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;Z)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "osie_video_display_switch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_preferred_screen_index"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "osie_video_display_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/content/Context;Z)Z
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "osie_motion_fluency_switch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "osie_motion_fluency_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;Z)Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "irirs_dialog_no_ask_again"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "osie_motion_value"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;Z)V
    .locals 0

    .line 127
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/v;->f(Landroid/content/Context;Z)V

    const/4 p1, 0x2

    .line 128
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;I)V

    return-void
.end method

.method public static f(Landroid/content/Context;Z)V
    .locals 0

    .line 132
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;Z)V

    .line 133
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->k(Landroid/content/Context;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "irirs_dialog_no_ask_again"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "coloros_screen_resolution_adjust"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 86
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result p0

    if-ne v2, p0, :cond_0

    const/4 p0, 0x2

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "coloros_screen_resolution_adjust"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 96
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;)I

    move-result p0

    if-ne v2, p0, :cond_1

    if-eq v0, v2, :cond_0

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/coloros/settings/utils/v;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 106
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;Z)Z

    .line 107
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method private static j(Landroid/content/Context;)I
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_preferred_screen_index"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static k(Landroid/content/Context;)V
    .locals 5

    .line 137
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120f83

    goto :goto_0

    :cond_0
    const v0, 0x7f120f6d

    .line 138
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/coloros/settings/utils/v$2;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/utils/v$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
