.class public final Lcom/color/darkmode/recovery/DarkModeXmlComposer;
.super Ljava/lang/Object;


# static fields
.field public static final DARKMODE_ROMUPDATE_HIDE_VERSION:Ljava/lang/String; = "DarkModeXmlComposer_romupdate_hide"

.field public static final DARKMODE_ROMUPDATE_HIDE_VERSION_KEY:Ljava/lang/String; = "DarkModeXmlComposer_romupdate_hide_version"

.field public static final DARKMODE_ROMUPDATE_OPEN_VERSION:Ljava/lang/String; = "DarkModeXmlComposer_romupdate_open"

.field public static final DARKMODE_ROMUPDATE_OPEN_VERSION_KEY:Ljava/lang/String; = "DarkModeXmlComposer_romupdate_open_version"

.field public static final DARKMODE_SWITCH:Ljava/lang/String; = "DarkModeXmlComposer_switch"

.field public static final DATA_SPLIT:Ljava/lang/String; = ":"

.field public static final END_OF_LINE:Ljava/lang/String; = "\r\n"

.field public static final INSTANCE:Lcom/color/darkmode/recovery/DarkModeXmlComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/darkmode/recovery/DarkModeXmlComposer;

    invoke-direct {v0}, Lcom/color/darkmode/recovery/DarkModeXmlComposer;-><init>()V

    sput-object v0, Lcom/color/darkmode/recovery/DarkModeXmlComposer;->INSTANCE:Lcom/color/darkmode/recovery/DarkModeXmlComposer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addDarkModeData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DarkModeXmlComposer_switch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {v1, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_begin_time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "contentResolver"

    invoke-static {p0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeBeginTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_end_time"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getDarkModeEndTimeData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_time_switch"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_switch_open_never_hint"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_rom_update_hidden_app"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateHiddenAppData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_rom_update_open_app"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateOpenAppData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_click_app"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getClickAppData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ColorDarkMode_open_app"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getOpenAppData(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DarkModeXmlComposer_romupdate_open_version"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "sys_darkmode_managed_list"

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DarkModeXmlComposer_romupdate_hide_version"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "sys_darkmode_hidden_list"

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DarkModeXmlComposer_romupdate_open"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "sys_darkmode_managed_list"

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersion(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "DarkModeXmlComposer_romupdate_hide"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "sys_darkmode_hidden_list"

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersion(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDarkModeData-->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final restoreData(Landroid/content/Context;Lcom/color/darkmode/recovery/RecoveryData;)V
    .locals 9

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "recoveryData"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v1, "contentResolver"

    invoke-static {p0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getTimeSwitch()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeTimeSwitchOpen(Landroid/content/ContentResolver;Z)Z

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getSwitchNeverOpenHint()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeSwitchOpenNeverHint(Landroid/content/ContentResolver;Z)Z

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getBeginTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->parseBeginTime(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const/4 v7, 0x0

    aget v2, v0, v7

    const/4 v8, 0x1

    aget v3, v0, v8

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeBeginTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->parseEndTime(Ljava/lang/String;)[I

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    aget v2, v0, v7

    aget v3, v0, v8

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeEndTime$default(Lcom/color/darkmode/utils/DarkModeSettingUtils;Landroid/content/ContentResolver;IIZILjava/lang/Object;)Z

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateHiddenApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setRomUpdateHiddenAppList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateOpenApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setRomUpdateOpenAppList(Landroid/content/ContentResolver;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getOpenApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setOpenAppData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getClickApp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setClickAppData(Landroid/content/ContentResolver;Ljava/lang/String;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setDarkModeLoadingSetting(Landroid/content/ContentResolver;I)Z

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "context.contentResolver"

    invoke-static {v0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->setWaitSwitchDarkMode(Landroid/content/ContentResolver;I)Z

    sget-object p0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getSwitch()Z

    move-result v0

    invoke-virtual {p0, p1, v0, v7}, Lcom/color/darkmode/utils/DarkModeManager;->immediatelyUpdateDarkModeSwitch(Landroid/content/Context;ZZ)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string p1, "sys_darkmode_managed_list"

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "sys_darkmode_hidden_list"

    invoke-virtual {p1, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getRomUpdateVersionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateHiddenAppVersionKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateOpenAppVersionKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    and-int/2addr p0, p1

    const/16 p1, 0x2c

    if-eqz p0, :cond_0

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "sys_darkmode_managed_list"

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateOpenAppVersion()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->putRomUpdateVersion(Ljava/lang/String;I)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v0, "sys_darkmode_hidden_list"

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateHiddenAppVersion()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->putRomUpdateVersion(Ljava/lang/String;I)V

    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore-->romUpdateVersion-->hideVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateHiddenAppVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "openVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getRomUpdateOpenAppVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restore-->timeSwitch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getTimeSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "switchNeverOpenHint:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getSwitchNeverOpenHint()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",beginTime:{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getBeginTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "},"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "endTime:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getEndTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",switch:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/color/darkmode/recovery/RecoveryData;->getSwitch()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->logD(Ljava/lang/String;)V

    return-void
.end method
