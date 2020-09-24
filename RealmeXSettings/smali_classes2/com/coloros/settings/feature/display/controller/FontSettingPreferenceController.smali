.class public Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "FontSettingPreferenceController.java"


# static fields
.field public static final KEY_FONT_SETTINGS:Ljava/lang/String; = "font_settings"

.field public static final PACKAGENAME_THEMESTORE_ACTION:Ljava/lang/String; = "com.nearme.themespace.SET_FONT"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "font_settings"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private collectFontSettingEvent()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "20120"

    const-string v2, "click_font_settings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.nearme.themespace.SET_FONT"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->au(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "font_settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;->collectFontSettingEvent()V

    .line 50
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/FontSettingPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1207fb

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
