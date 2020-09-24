.class public final Lcom/color/darkmode/utils/DarkModeSettingUtils;
.super Ljava/lang/Object;


# static fields
.field public static final BEGIN_TIME:Ljava/lang/String; = "ColorDarkMode_begin_time"

.field public static final CHANGE_NIGHT_MODE:Ljava/lang/String; = "ColorDarkMode_change_night_mode"

.field public static final CLICK_APP:Ljava/lang/String; = "ColorDarkMode_click_app"

.field private static DEBUG:Z = false

.field private static final DEFAULT_BEGIN_HOUR:I = 0x16

.field private static final DEFAULT_BEGIN_MINUTE:I = 0x0

.field private static final DEFAULT_END_HOUR:I = 0x7

.field private static final DEFAULT_END_MINUTE:I = 0x0

.field private static final DEFAULT_SWITCH:I = 0x0

.field public static final END_TIME:Ljava/lang/String; = "ColorDarkMode_end_time"

.field public static final INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

.field public static final INVALID:I = -0x1

.field public static final OPEN_APP:Ljava/lang/String; = "ColorDarkMode_open_app"

.field public static final ROM_UPDATE_HIDDEN_APP:Ljava/lang/String; = "ColorDarkMode_rom_update_hidden_app"

.field public static final ROM_UPDATE_OPEN_APP:Ljava/lang/String; = "ColorDarkMode_rom_update_open_app"

.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field public static final SWITCH_OPEN_NEVER_HINT:Ljava/lang/String; = "ColorDarkMode_switch_open_never_hint"

.field private static final TAG:Ljava/lang/String; = "DarkModeManager"

.field public static final TIME_SWITCH:Ljava/lang/String; = "ColorDarkMode_time_switch"

.field public static final WAIT_SWITCH_DARKMODE:Ljava/lang/String; = "ColorDarkMode_wait_switch_darkmode"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-direct {v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSplitAppList(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 p1, 0x0

    const/4 v6, 0x1

    if-lez p0, :cond_0

    move p0, v6

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    if-eqz p0, :cond_5

    const-string p0, ","

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, La/h/f;->a(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, La/h/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, La/a/g;->d(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object p0

    :goto_3
    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_5
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    goto :goto_3
.end method

.method private final getTimeSeparator()C
    .locals 7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "Hm"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "time"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x48

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, La/h/f;->b(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3a

    :goto_0
    return p0
.end method

.method private final putSplitAppList(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, La/h/f;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v3, v1

    :cond_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    move-object p1, p0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    move v3, v1

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "result.toString()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic setDarkModeBeginTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeBeginTime(Landroid/content/ContentResolver;IIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic setDarkModeEndTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeEndTime(Landroid/content/ContentResolver;IIZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic setDarkModeSwitchOpenNeverHint$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic setDarkModeTimeSwitchOpen$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic setSystemDarkModeOpen$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/Context;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setSystemDarkModeOpen(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public final getApplicationList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "context.contentResolver"

    invoke-static {p1, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateHiddenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p0

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    sget-object v3, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v6, "packageName"

    invoke-static {v1, v6}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isOSApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;

    const-string v3, "it"

    invoke-static {v4, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    move-object v3, v1

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final getApplicationPackageNameSet(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "context.contentResolver"

    invoke-static {p1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateHiddenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v4, "packageName"

    invoke-static {v2, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isOSApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public final getClickAppData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_click_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getClickAppList(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_click_app"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getSplitAppList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getDarkModeBeginTime(Landroid/content/ContentResolver;)[I
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeBeginTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->parseBeginTime(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getDarkModeBeginTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_begin_time"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getDarkModeEndTime(Landroid/content/ContentResolver;)[I
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeEndTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->parseEndTime(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getDarkModeEndTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_end_time"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterName"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/database/Cursor;

    check-cast v0, Ljava/lang/String;

    const-string v2, "xml"

    const-string v3, "version"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object p1, Lcom/color/darkmode/romupdate/RomUpdateUtils;->INSTANCE:Lcom/color/darkmode/romupdate/RomUpdateUtils;

    invoke-virtual {p1}, Lcom/color/darkmode/romupdate/RomUpdateUtils;->getCONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filtername=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "version"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersion(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->putRomUpdateVersion(Ljava/lang/String;I)V

    const-string p0, "xml"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_0

    :try_start_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p2

    move-object v0, p0

    goto :goto_1

    :cond_0
    move-object v0, p0

    goto :goto_2

    :catchall_1
    :goto_0
    move-object v1, p1

    goto :goto_4

    :catch_1
    move-exception p2

    :goto_1
    move-object v1, p1

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catch_2
    move-exception p2

    :goto_3
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_2
    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public final getFormatTimeString(IIZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_0

    sget-object p3, La/d/b/p;->a:La/d/b/p;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v5, "Locale.getDefault()"

    invoke-static {p3, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "%02d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    array-length p1, v6

    :goto_0
    invoke-static {v6, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "java.lang.String.format(locale, format, *args)"

    invoke-static {p1, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const/16 p3, 0xc

    if-ge p1, p3, :cond_1

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

    const-string v5, "amPmStrings[index]"

    invoke-static {v2, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-nez p1, :cond_3

    move p1, p3

    :cond_3
    if-le p1, p3, :cond_4

    add-int/lit8 p1, p1, -0xc

    :cond_4
    sget-object p3, La/d/b/p;->a:La/d/b/p;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string v5, "Locale.getDefault()"

    invoke-static {p3, v5}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "%d"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    array-length p1, v6

    goto :goto_0

    :goto_2
    invoke-direct {p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getTimeSeparator()C

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, La/d/b/p;->a:La/d/b/p;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string p1, "Locale.getDefault()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "%02d"

    new-array p3, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v3

    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "java.lang.String.format(locale, format, *args)"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sb.toString()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getOpenAppData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_open_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getOpenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_open_app"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getSplitAppList(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getOpenAppList(Landroid/content/Context;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "contentResolver"

    invoke-static {p1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getOpenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getClickAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateHiddenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateOpenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {p1, v3}, La/a/aa;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v2, p1}, La/a/aa;->b(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {p1, v4}, La/a/aa;->a(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpenAppList cost time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-object p1
.end method

.method public final getRomUpdateHiddenAppData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_rom_update_hidden_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getRomUpdateHiddenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_rom_update_hidden_app"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->parserXmlValueToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getRomUpdateOpenAppData(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_rom_update_open_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final getRomUpdateOpenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_rom_update_open_app"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->parserXmlValueToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getRomUpdateVersion(Ljava/lang/String;)I
    .locals 1

    const-string v0, "filterName"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/SpHelper;->INSTANCE:Lcom/color/darkmode/utils/SpHelper;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/color/darkmode/utils/SpHelper;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "filterName"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/color/support/util/g;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportApplicationCount(Landroid/content/Context;)[I
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getOpenAppList(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "context.contentResolver"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateHiddenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    const/4 v5, 0x0

    if-gtz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    sget-object v6, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v7, "packageName"

    invoke-static {v3, v7}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isOSApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v2, :cond_0

    if-nez v6, :cond_0

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, v1, v5

    add-int/2addr v2, v4

    aput v2, v1, v5

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, v1, v4

    add-int/2addr v2, v4

    aput v2, v1, v4

    goto :goto_0

    :cond_2
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final getWaitSwitchDarkMode(Landroid/content/ContentResolver;)I
    .locals 2

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_wait_switch_darkmode"

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final handleAllChecked(ZLjava/util/Set;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contentResolver"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getOpenAppList(Landroid/content/ContentResolver;)Ljava/util/Set;

    move-result-object v1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getApplicationPackageNameSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_2
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setOpenAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V

    return-void
.end method

.method public final hasDisableFeature(Landroid/content/Context;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "oppo.settings.disable.display.nightmode"

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_switch_open_never_hint"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public final isDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_time_switch"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method public final isOSApp(Ljava/lang/String;)Z
    .locals 3

    const-string p0, "packageName"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "com.oppo"

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v2, v1, v0}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.coloros"

    invoke-static {p1, p0, v2, v1, v0}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.nearme"

    invoke-static {p1, p0, v2, v1, v0}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.heytap"

    invoke-static {p1, p0, v2, v1, v0}, La/h/f;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final isSystemDarkModeOpen(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uimode"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/app/UiModeManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p0, Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final logD(Ljava/lang/String;)V
    .locals 0

    const-string p0, "content"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "DarkModeManager"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final parseBeginTime(Ljava/lang/String;)[I
    .locals 5

    const/4 p0, 0x2

    new-array v0, p0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v3, ":"

    new-instance v4, La/h/e;

    invoke-direct {v4, v3}, La/h/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, v2}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-nez v4, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {p1, v3}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    array-length v3, v0

    if-ne v3, p0, :cond_5

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v2

    aget-object p0, p1, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    move p0, v1

    goto :goto_2

    :cond_3
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, La/o;

    const-string p1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p0, p1}, La/o;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    move p0, v2

    :goto_2
    if-nez p0, :cond_6

    const/16 p0, 0x16

    aput p0, v0, v2

    aput v2, v0, v1

    :cond_6
    return-object v0
.end method

.method public final parseEndTime(Ljava/lang/String;)[I
    .locals 4

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;

    const-string v2, ":"

    new-instance v3, La/h/e;

    invoke-direct {v3, v2}, La/h/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v1}, La/h/e;->a(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p1, v2}, La/a/g;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {}, La/a/g;->a()Ljava/util/List;

    move-result-object p1

    :goto_1
    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_4

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, [Ljava/lang/String;

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, p0, v1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, p0, v0

    move p1, v0

    goto :goto_2

    :cond_3
    new-instance p1, La/o;

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v2}, La/o;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, La/o;

    const-string v2, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {p1, v2}, La/o;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move p1, v1

    :goto_2
    if-nez p1, :cond_6

    const/4 p1, 0x7

    aput p1, p0, v1

    aput v1, p0, v0

    :cond_6
    return-object p0
.end method

.method public final parserXmlValueToSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/io/Reader;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    :cond_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    const-string v2, "parser"

    invoke-static {v0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "p"

    invoke-static {v3, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const-string v3, "attr"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    if-ne p1, v1, :cond_2

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_4
    :goto_2
    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final putRomUpdateVersion(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "filterName"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/SpHelper;->INSTANCE:Lcom/color/darkmode/utils/SpHelper;

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/color/darkmode/utils/SpHelper;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final recoveryData(Landroid/content/Context;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v0, "contentResolver"

    invoke-static {v7, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;Z)Z

    invoke-virtual {p0, v7, v8}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;Z)Z

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeBeginTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    const/4 v2, 0x7

    invoke-static/range {v0 .. v6}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeEndTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    const-string v0, ""

    invoke-virtual {p0, v7, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setRomUpdateOpenAppList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v7, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setRomUpdateHiddenAppList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setClickAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V

    invoke-virtual {p0, v7, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setOpenAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeLoadingSetting(Landroid/content/ContentResolver;I)Z

    invoke-virtual {p0, v7, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setWaitSwitchDarkMode(Landroid/content/ContentResolver;I)Z

    invoke-virtual {p0, p1, v8}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setSystemDarkModeOpen(Landroid/content/Context;Z)V

    return-void
.end method

.method public final setClickAppData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_click_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setClickAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_click_app"

    invoke-direct {p0, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->putSplitAppList(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setDarkModeBeginTime(Landroid/content/ContentResolver;IIZ)Z
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_begin_time"

    invoke-virtual {p0, p2, p3, p4}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final setDarkModeEndTime(Landroid/content/ContentResolver;IIZ)Z
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_end_time"

    invoke-virtual {p0, p2, p3, p4}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getFormatTimeString(IIZ)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final setDarkModeLoadingSetting(Landroid/content/ContentResolver;I)Z
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_change_night_mode"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;Z)Z
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_switch_open_never_hint"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;Z)Z
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_time_switch"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final setOpenAppData(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_open_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setOpenAppList(Landroid/content/ContentResolver;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ColorDarkMode_open_app"

    invoke-direct {p0, p2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->putSplitAppList(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x2

    invoke-static {p1, v0, p0, p2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setRomUpdateHiddenAppList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_rom_update_hidden_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setRomUpdateOpenAppList(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_rom_update_open_app"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public final setSystemDarkModeOpen(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uimode"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/app/UiModeManager;

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_1
    return-void
.end method

.method public final setWaitSwitchDarkMode(Landroid/content/ContentResolver;I)Z
    .locals 1

    const-string p0, "contentResolver"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ColorDarkMode_wait_switch_darkmode"

    const/4 v0, -0x2

    invoke-static {p1, p0, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
