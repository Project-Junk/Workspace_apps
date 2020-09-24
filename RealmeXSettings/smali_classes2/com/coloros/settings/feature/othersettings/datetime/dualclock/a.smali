.class public final Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;
.super Ljava/lang/Object;
.source "ColorDualClockUtils.java"


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a:I

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 48
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->b(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_dual_clock_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 42
    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;II)V

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->a:I

    const-string v1, "enable_dual_clock_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 2

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_dual_clock_clock_widget_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x3

    .line 73
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_dual_clock_screen_clock_switch"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_dual_clock_screen_clock_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x2

    .line 83
    invoke-static {p0, v0, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;II)V

    return-void
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_dual_clock_clock_widget_switch"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    .line 67
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->d(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    .line 77
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/datetime/dualclock/a;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
