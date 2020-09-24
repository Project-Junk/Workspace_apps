.class public final Lcom/coloros/settings/feature/display/nightmode/b;
.super Ljava/lang/Object;
.source "ProtectEyesUtil.java"


# direct methods
.method private static a()C
    .locals 3

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    return v0
.end method

.method public static a(IIZ)Ljava/lang/String;
    .locals 7

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "%02d"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    .line 207
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {p2, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    goto :goto_1

    :cond_0
    const/16 p2, 0xc

    if-ge p0, p2, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 210
    :goto_0
    new-instance v6, Ljava/text/DateFormatSymbols;

    invoke-direct {v6}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v6}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    .line 211
    aget-object v5, v6, v5

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez p0, :cond_3

    move p0, p2

    :cond_3
    if-le p0, p2, :cond_4

    add-int/lit8 p0, p0, -0xc

    .line 222
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    const-string p0, "%d"

    invoke-static {p2, p0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, v5

    .line 225
    :goto_1
    invoke-static {}, Lcom/coloros/settings/feature/display/nightmode/b;->a()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p2, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    .line 229
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;Z)V
    .locals 2

    const/4 v0, -0x2

    const-string v1, "color_eyeprotect_enable"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 74
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 76
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "fix_time_state"

    const/4 v2, -0x2

    .line 63
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/ContentResolver;Z)V
    .locals 2

    const/4 v0, -0x2

    const-string v1, "fix_time_state"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 83
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 85
    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static b(Landroid/content/ContentResolver;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "color_eyeprotect_enable"

    const/4 v2, -0x2

    .line 68
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static c(Landroid/content/ContentResolver;)V
    .locals 3

    .line 130
    invoke-static {p0}, Lcom/coloros/settings/feature/display/nightmode/b;->e(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x2

    const-string v2, "shortcuts_panel_show_guide_dialog"

    .line 131
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "display_mode_change"

    .line 91
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static d(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "gray_scale_on"

    .line 97
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static d(Landroid/content/ContentResolver;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "eyeprotect_fix_time_change"

    const/4 v2, -0x2

    .line 183
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne v1, p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static e(Landroid/content/ContentResolver;Z)V
    .locals 1

    const-string v0, "normal_on"

    .line 105
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static e(Landroid/content/ContentResolver;)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "shortcuts_panel_show_guide_dialog"

    const/4 v2, -0x2

    .line 125
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
