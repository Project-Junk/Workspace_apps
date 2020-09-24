.class Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;
.super Ljava/lang/Object;
.source "SimManagerPreferenceUtils.java"


# static fields
.field public static final SP_NAME_MOBILE_IS_DOUBLE_SIM:Ljava/lang/String; = "sp_name_is_double_sim"

.field public static final SP_NAME_MOBILE_PLATFORM:Ljava/lang/String; = "sp_name_mobile_platform"

.field public static STATISTICS_PLATFORM_MTK:I = 0x1

.field public static STATISTICS_PLATFORM_QUALCOMM:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 82
    invoke-static {p0, p1, v0, v1}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMobileFlatForm(Landroid/content/Context;)I
    .locals 1

    const-string v0, "sp_name_mobile_platform"

    .line 38
    invoke-static {p0, v0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->getPropertyDoublesimPreferenceXor8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 100
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDoubleSim(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "sp_name_is_double_sim"

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 52
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 64
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 65
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setIsDoubleSim(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "sp_name_is_double_sim"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 78
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMobileFlatForm(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "sp_name_mobile_platform"

    .line 34
    invoke-static {p0, v0, p1}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 91
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
