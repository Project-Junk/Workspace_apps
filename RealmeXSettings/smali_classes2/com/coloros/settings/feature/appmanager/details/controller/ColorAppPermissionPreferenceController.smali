.class public Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.source "ColorAppPermissionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field public static final KEY_PERMISSION_CATEGORY:Ljava/lang/String; = "permission_control_category"

.field private static final KEY_PERMISSION_MANAGER:Ljava/lang/String; = "key_permission_manager"

.field private static final TAG:Ljava/lang/String; = "ColorAppPermissionManagerPreferenceController"


# instance fields
.field private mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;

.field private mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private mSmsManager:Lcom/android/internal/telephony/ISms;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_permission_manager"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "isms"

    .line 70
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 71
    new-instance p1, Lcom/coloros/settings/feature/appmanager/a;

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/coloros/settings/feature/appmanager/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;

    .line 72
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->refreshPermissionManagerPreference()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->updatePermissionManagerPreference(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p0
.end method

.method private disallowDreamVodeoPermission(Ljava/lang/String;)V
    .locals 1

    .line 109
    sget-boolean v0, Lcom/coloros/settings/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "com.oppo.daydreamvideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private parseXml()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "Error occur, e = "

    const-string v1, "ColorAppPermissionManagerPreferenceController"

    .line 234
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "system/oppo/default_grant_permissions_list.xml"

    .line 238
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 242
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const-string v6, "UTF-8"

    .line 243
    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 244
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v3

    move-object v8, v7

    :goto_0
    const/4 v9, 0x1

    if-eq v6, v9, :cond_4

    if-eqz v6, :cond_3

    const/4 v9, 0x2

    const-string v10, "default-grant-permissions"

    if-eq v6, v9, :cond_1

    const/4 v9, 0x3

    if-eq v6, v9, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    :try_start_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v3

    goto :goto_1

    .line 251
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    .line 253
    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v7

    move-object v7, v6

    goto :goto_1

    :cond_2
    const-string v9, "permission"

    .line 255
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v8, :cond_3

    .line 256
    invoke-interface {v4, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_3
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v3

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    .line 275
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    .line 273
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    :cond_4
    :goto_4
    invoke-static {v5}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v5}, Lcom/android/org/conscrypt/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    throw v0
.end method

.method private refreshPermissionManagerPreference()V
    .locals 1

    .line 146
    new-instance v0, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorAppPermissionPreferenceController$ue3yiS4C7C_PeAHaIZm5lnCC5bo;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorAppPermissionPreferenceController$ue3yiS4C7C_PeAHaIZm5lnCC5bo;-><init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)V

    invoke-static {v0}, Lcom/coloros/settings/utils/bk;->b(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updatePermissionManagerPreference(I)V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const-string p1, ""

    .line 167
    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100039

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_notification_manager"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f0d00a7

    .line 82
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    :cond_0
    return-void
.end method

.method public doAfterPermissionCallback(IIILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 178
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "doAfterPermissionCallback: standardGrantedPermissionCount: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", requestedPermissionCount: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", additionalGrantedPermissionCount: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ColorAppPermissionManagerPreferenceController"

    invoke-static {p3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p1

    if-gtz p2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    const p3, 0x7f120f7c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->c(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 190
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 191
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mPermissionManagerPref:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_4

    .line 200
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->disallowDreamVodeoPermission(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 94
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/coloros/b/b;->a()Landroid/content/pm/OppoPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/OppoPackageManager;->isClosedSuperFirewall()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return v1

    :catch_0
    move-exception v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppPermissionManagerPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 12

    const-string v0, "package_name"

    const-string v1, "ColorAppPermissionManagerPreferenceController"

    const-string v2, "app_detail_permission"

    .line 206
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 210
    :cond_0
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "1"

    .line 211
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    if-eqz p1, :cond_2

    .line 219
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getIsAndroidFuction()Z

    move-result p1

    const-string v1, "packageLabel"

    const-string v3, "AppCustomizedControl"

    if-eqz p1, :cond_1

    .line 220
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;

    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v4, v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v5, v5, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 221
    invoke-virtual {v6}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 1066
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.extra.PACKAGE_NAME"

    .line 1067
    invoke-virtual {v7, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    invoke-virtual {v7, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 1069
    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1071
    :try_start_1
    iget-object p1, p1, Lcom/coloros/settings/feature/appmanager/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p1, "oppo.intent.action.MANAGE_APP_PERMISSIONS undeclared in safecenter AndroidManifest.xml"

    .line 1073
    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mCustomizedControl:Lcom/coloros/settings/feature/appmanager/a;

    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v4, v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v5, v5, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v5, v5, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 224
    invoke-virtual {v6}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c()Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/coloros/settings/adaptor/AppInfoDashboardFragmentAdaptor;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 1081
    new-instance v7, Landroid/content/Intent;

    const-string v8, "oppo.intent.action.PERMISSION_APP_DETAIL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    new-instance v9, Landroid/content/ComponentName;

    const-string v10, "com.coloros.safecenter"

    const-string v11, "com.coloros.safecenter.permission.PermissionAppAllPermissionActivity"

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1084
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const-string v11, "permissionList"

    .line 1085
    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v10, "packageName"

    .line 1086
    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v9, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "source"

    const-string v4, "Settings"

    .line 1088
    invoke-virtual {v9, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v7, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1090
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1093
    :try_start_2
    iget-object v4, p1, Lcom/coloros/settings/feature/appmanager/a;->a:Landroid/content/Context;

    invoke-virtual {v4, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string v1, "oppo.intent.action.PERMISSION_APP_DETAIL undeclared in safecenter AndroidManifest.xml"

    .line 1095
    invoke-static {v3, v1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :try_start_3
    iget-object p1, p1, Lcom/coloros/settings/feature/appmanager/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    const-string p1, "PermissionAppAllPermissionActivity undeclared in safecenter AndroidManifest.xml"

    .line 1099
    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1137
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1138
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "20012"

    .line 1139
    invoke-static {p1, v0, v2, v3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 228
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mPackageInfo="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$refreshPermissionManagerPreference$0$ColorAppPermissionPreferenceController()V
    .locals 2

    .line 147
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;->parseXml()Ljava/util/Map;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$2;-><init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/coloros/settings/utils/bk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadPermissionInfoAsync(Ljava/lang/String;)V
    .locals 4

    .line 127
    new-instance v0, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;-><init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)Lcom/coloros/settings/feature/appmanager/details/controller/ColorAppPermissionPreferenceController;
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setPackageName(Ljava/lang/String;)V

    return-object p0
.end method
