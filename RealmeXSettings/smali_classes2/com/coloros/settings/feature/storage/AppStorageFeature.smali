.class public Lcom/coloros/settings/feature/storage/AppStorageFeature;
.super Lcom/color/injector/adaptor/g;
.source "AppStorageFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_storage"
.end annotation


# static fields
.field private static final EXTRA_UNINSTALL_MULTI_APP_LABEL:Ljava/lang/String; = "uninstall_multi_app_label"

.field private static final SELLMODE_APP_PACKAGE:Ljava/lang/String; = "com.oppo.daydreamvideo"

.field public static final START_ACTIVITY_UNINSTALL_FOR_RESULT:I = 0x35

.field private static final TAG:Ljava/lang/String; = "AppStorageFeature"


# instance fields
.field private mAppICon:Landroid/widget/ImageView;

.field private mAppName:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mHeaderLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getUninstallDialog(Landroid/content/Context;Lcom/android/settings/applications/AppStorageSettings;)Lcolor/support/v7/app/AlertDialog;
    .locals 1

    .line 210
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f121594

    .line 211
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$HWrpwaIhSXLhpPtSqq26YRMV6_w;-><init>(Lcom/coloros/settings/feature/storage/AppStorageFeature;Lcom/android/settings/applications/AppStorageSettings;)V

    const p2, 0x7f121593

    .line 212
    invoke-virtual {p1, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object p2, Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$01ZhiTQ5LZSs_06AsOjw0vBVS_Q;->INSTANCE:Lcom/coloros/settings/feature/storage/-$$Lambda$AppStorageFeature$01ZhiTQ5LZSs_06AsOjw0vBVS_Q;

    const v0, 0x7f120491

    .line 214
    invoke-virtual {p1, v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$getUninstallDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private uninstallPkg(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/16 v2, 0x3e7

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mUserId:I

    if-ne v0, v2, :cond_0

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.oppo.settings.action.EXP_UNINSTALL_MULTI_APP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    const-string v3, "package_name"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mUserId:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v3, "uninstall_multi_app"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 236
    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v0

    iget-object v3, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mUserId:I

    if-ne v3, v2, :cond_2

    const-string v2, "uninstall_multi_app_label"

    .line 238
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/16 v0, 0x35

    .line 241
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/applications/AppStorageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getPreferenceResId(I)I
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f150041

    return p1
.end method

.method public initClearButtons(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/AppStorageSettings;)Z
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p2, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 89
    iget-object p2, p2, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    check-cast p2, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;

    const-string v0, "clear_data_button"

    .line 1054
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    const-string v1, "clear_cache_button"

    .line 1055
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0a00fd

    .line 1056
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->b:Landroid/widget/Button;

    .line 1059
    invoke-virtual {p2}, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0600e8

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 1060
    iget-object v2, p2, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->b:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1061
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p2, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->c:Landroid/widget/Button;

    .line 1062
    iget-object p1, p2, Lcom/coloros/settings/feature/storage/widgets/ColorStorageActionButtonsPreference;->c:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$getUninstallDialog$0$AppStorageFeature(Lcom/android/settings/applications/AppStorageSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->uninstallPkg(Lcom/android/settings/applications/AppStorageSettings;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 1

    .line 245
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    iget-object p2, p4, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p2, 0x35

    if-ne p1, p2, :cond_1

    .line 249
    invoke-virtual {p4}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 252
    :try_start_0
    iget-object p3, p4, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    const/16 v0, 0x2000

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppStorageFeature"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez p2, :cond_1

    .line 257
    invoke-static {}, Lcom/coloros/settings/feature/storage/a;->a()Lcom/coloros/settings/feature/storage/a;

    move-result-object p1

    iget-object p2, p4, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/storage/a;->a(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p4}, Lcom/android/settings/applications/AppStorageSettings;->finishFragment()V

    :cond_1
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/android/settings/applications/AppStorageSettings;)Z
    .locals 3

    .line 198
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a00f8

    if-ne v0, v2, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->getUninstallDialog(Landroid/content/Context;Lcom/android/settings/applications/AppStorageSettings;)Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public setSwitchEnableStatus(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    sget-boolean v0, Lcom/coloros/settings/a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    const-string v2, "com.oppo.daydreamvideo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 270
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    const-string v3, "gray-clear"

    invoke-static {v0, v2, v3}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->b(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 273
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    const-string v3, "gray-cache"

    invoke-static {v0, v2, v3}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p1, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->d(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 276
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStorageSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/applications/AppStorageSettings;->q:Lcom/android/settingslib/widget/ActionButtonsPreference;

    iget-object p1, p1, Lcom/android/settings/applications/AppStorageSettings;->i:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Lcom/android/settingslib/widget/ActionButtonsPreference;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setupHeaderViews(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "header_view"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mHeaderLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mHeaderLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    const-string v0, "header_view_divider"

    .line 97
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mHeaderLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a009d

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppICon:Landroid/widget/ImageView;

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mHeaderLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a009f

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppName:Landroid/widget/TextView;

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mHeaderLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a00ad

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppVersion:Landroid/widget/TextView;

    return-void
.end method

.method public setupUninstallButton(Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mUserId:I

    .line 161
    invoke-virtual {p2}, Lcom/android/settings/applications/AppStorageSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v2, ":settings:source_metrics"

    .line 166
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0xb6

    if-eq v0, v2, :cond_2

    return-void

    .line 172
    :cond_2
    invoke-virtual {p2}, Lcom/android/settings/applications/AppStorageSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 177
    :cond_3
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr p1, v2

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    return-void

    :cond_5
    const p1, 0x102003f

    .line 182
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-nez p1, :cond_6

    return-void

    :cond_6
    const v0, 0x7f0a00f8

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    .line 191
    :cond_7
    invoke-virtual {p2}, Lcom/android/settings/applications/AppStorageSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00f2

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 193
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public showMoveStorage()Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateAppInfos(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 6

    const-string v0, "_"

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppICon:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p1, p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppICon:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppName:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 117
    iget-object v1, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppVersion:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    .line 122
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x80

    .line 123
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 124
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 125
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p2, :cond_7

    const-string v2, "versionCommit"

    .line 129
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 131
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_0
    const-string v4, "versionDate"

    .line 133
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 138
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez p2, :cond_6

    .line 140
    new-array p2, v5, [Ljava/lang/CharSequence;

    aput-object v0, p2, v4

    aput-object v2, p2, v1

    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_6
    const/4 p2, 0x4

    .line 142
    new-array p2, p2, [Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object p1, p2, v4

    aput-object v2, p2, v1

    aput-object v0, p2, v5

    const/4 p1, 0x3

    aput-object v3, p2, p1

    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/AppStorageFeature;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppStorageFeature"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    return-void
.end method
