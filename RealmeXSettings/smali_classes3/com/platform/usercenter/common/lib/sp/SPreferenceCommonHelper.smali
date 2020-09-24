.class public Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;
.super Ljava/lang/Object;
.source "SPreferenceCommonHelper.java"


# static fields
.field public static final KEY_ICON_RED_DOT_COUNT:Ljava/lang/String; = "key_icon_red_dot_count"

.field private static final KEY_USER_MAC_ADDRESS:Ljava/lang/String; = "KEY_WMC"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    .line 85
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    .line 94
    invoke-static {p0, p1, v0, v1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRedDotCount(Landroid/content/Context;)I
    .locals 1

    const-string v0, "key_icon_red_dot_count"

    .line 35
    invoke-static {p0, v0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 56
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 112
    invoke-static {p0, p1, v0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 117
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 122
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    return-object p0
.end method

.method public static getUserMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "KEY_WMC"

    .line 44
    invoke-static {p0, v0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 46
    invoke-static {p0, v0}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 64
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setInt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 77
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLong(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 89
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 90
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setRedDotCount(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "key_icon_red_dot_count"

    .line 39
    invoke-static {p0, v0, p1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 103
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setStringSet(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 108
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setUserMacAddress(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 52
    invoke-static {p1, v0}, Lcom/platform/usercenter/tools/XORUtils;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KEY_WMC"

    invoke-static {p0, v0, p1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
