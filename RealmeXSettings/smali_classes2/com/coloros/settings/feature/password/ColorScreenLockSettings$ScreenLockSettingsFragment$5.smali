.class final Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$5;
.super Lcom/android/settings/search/a;
.source "ColorScreenLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1142
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1176
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "screen_lock_password_settings"

    .line 1177
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "open_key_guard"

    .line 1178
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "close_key_guard"

    .line 1179
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 1146
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    invoke-static {p1}, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1150
    const-class v1, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12133c

    .line 1152
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1151
    invoke-static {p1, v0, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "screen_lock_password_settings"

    const-string v4, "open_key_guard"

    const-string v5, "close_key_guard"

    .line 1153
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 1157
    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const v2, 0x7f120512

    .line 1158
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const v2, 0x7f1204cf

    .line 1159
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v5, v7

    :goto_0
    if-ge v6, v4, :cond_0

    .line 1161
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 1162
    aget-object v7, v3, v6

    iput-object v7, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 1163
    aget-object v7, v5, v6

    iput-object v7, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 1164
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 1165
    iput-object v1, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v7, "oppo.intent.action.SCREEN_LOCK"

    .line 1166
    iput-object v7, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    const v7, 0x7f0809b5

    .line 1167
    iput v7, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 1168
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method
