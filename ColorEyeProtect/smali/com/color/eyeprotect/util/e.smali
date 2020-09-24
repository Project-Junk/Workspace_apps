.class public Lcom/color/eyeprotect/util/e;
.super Ljava/lang/Object;


# direct methods
.method public static a()C
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Hm"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3a

    :goto_0
    return v0
.end method

.method public static a(Landroid/content/ContentResolver;FI)F
    .locals 1

    const-string v0, "color_eyeprotect_saved_level"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)F
    .locals 2

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x3e2e147b    # 0.17f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "color_display_level"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "color_display_level"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    :goto_0
    return v1
.end method

.method public static a(Landroid/content/ContentResolver;II)I
    .locals 1

    const-string v0, "setting_value_color_temperature_regulation"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static a(IIZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v5, "%02d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    :goto_0
    invoke-static {p2, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 p2, 0xc

    if-ge p0, p2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-direct {v5}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez p0, :cond_3

    move p0, p2

    :cond_3
    if-le p0, p2, :cond_4

    add-int/lit8 p0, p0, -0xc

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v5, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/color/eyeprotect/util/e;->a()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p2, "%02d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p0, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/ContentResolver;J)V
    .locals 2

    const-string v0, "eyeprotect_enable_time"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, p2, v1}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OppoEyeprotect_timer_active_time"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Z)V
    .locals 2

    const/4 v0, -0x2

    if-eqz p1, :cond_0

    const-string p1, "color_eyeprotect_enable"

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_0
    const-string p1, "color_eyeprotect_enable"

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)Z
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/ContentResolver;F)Z
    .locals 2

    const-string v0, "OppoEyeprotect_level"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "fix_time_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.color.temperature.adjustment.not.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string v0, "ColorEyeProtect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasSupportScreenDisplay, mScreenDisplaySupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/commons/utils/LogUtils;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;F)F
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, p1, v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;FI)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)F
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/Context;I)F

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;Z)V
    .locals 2

    const/4 v0, -0x2

    if-eqz p1, :cond_0

    const-string p1, "fix_time_state"

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_0
    const-string p1, "fix_time_state"

    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static b(Landroid/content/ContentResolver;)Z
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "color_eyeprotect_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1
.end method

.method public static c(Landroid/content/ContentResolver;F)V
    .locals 2

    const-string v0, "color_eyeprotect_saved_level"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method public static c(Landroid/content/ContentResolver;Z)V
    .locals 2

    const-string v0, "display_mode_change"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static c(Landroid/content/ContentResolver;)Z
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->c(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "gray_scale_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1
.end method

.method public static d(Landroid/content/ContentResolver;F)D
    .locals 2

    const-string v0, "color_eyeprotect_level"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public static d(Landroid/content/ContentResolver;Z)V
    .locals 2

    const-string v0, "gray_scale_on"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static d(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "display_mode_change"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static d(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "shortcuts_panel_show_guide_dialog"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/ContentResolver;)F
    .locals 1

    const v0, 0x3f3051ca

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;F)F

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/ContentResolver;I)I
    .locals 2

    const-string v0, "eyeprotect_begin_time_hour"

    const/16 v1, 0x16

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/ContentResolver;Z)V
    .locals 2

    const-string v0, "normal_on"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static e(Landroid/content/ContentResolver;F)Z
    .locals 2

    const-string v0, "color_eyeprotect_level"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/ContentResolver;)F
    .locals 3

    const-string v0, "color_eyeprotect_start_level"

    const v1, 0x3f3051ca

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/ContentResolver;F)V
    .locals 2

    const-string v0, "color_eyeprotect_start_level"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method public static f(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "eyeprotect_begin_time_hour"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static f(Landroid/content/ContentResolver;Z)Z
    .locals 2

    const-string v0, "eyeprotect_fix_time_change"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/ContentResolver;I)I
    .locals 2

    const-string v0, "eyeprotect_begin_time_min"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "normal_on"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static g(Landroid/content/ContentResolver;Z)Z
    .locals 2

    const-string v0, "setting_enable_color_temperature_regulation"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "shortcuts_panel_show_guide_dialog"

    const/4 v1, 0x1

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static h(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "eyeprotect_begin_time_min"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/ContentResolver;)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->e(Landroid/content/ContentResolver;I)I

    move-result p0

    return p0
.end method

.method public static i(Landroid/content/ContentResolver;I)I
    .locals 2

    const-string v0, "eyeprotect_end_time_hour"

    const/4 v1, 0x7

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/ContentResolver;)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->g(Landroid/content/ContentResolver;I)I

    move-result p0

    return p0
.end method

.method public static j(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "eyeprotect_end_time_hour"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/ContentResolver;)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->i(Landroid/content/ContentResolver;I)I

    move-result p0

    return p0
.end method

.method public static k(Landroid/content/ContentResolver;I)I
    .locals 2

    const-string v0, "eyeprotect_end_time_min"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static l(Landroid/content/ContentResolver;)I
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->k(Landroid/content/ContentResolver;I)I

    move-result p0

    return p0
.end method

.method public static l(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "eyeprotect_end_time_min"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static m(Landroid/content/ContentResolver;)Z
    .locals 3

    const-string v0, "eyeprotect_fix_time_change"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static m(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "setting_enable_color_temperature_regulation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1
.end method

.method public static n(Landroid/content/ContentResolver;)J
    .locals 4

    const-string v0, "eyeprotect_enable_time"

    const-wide/16 v1, 0x0

    const/4 v3, -0x2

    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(Landroid/content/ContentResolver;I)Z
    .locals 2

    const-string v0, "setting_value_color_temperature_regulation"

    const/4 v1, -0x2

    invoke-static {p0, v0, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    const-string v0, "OppoEyeprotect_timer_active_time"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/content/ContentResolver;)Z
    .locals 1

    const/4 v0, -0x2

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->m(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method
