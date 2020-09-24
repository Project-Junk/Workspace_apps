.class public final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 239
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_detail_uninstall"

    const-string v2, "1"

    .line 242
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "package_name"

    .line 243
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    .line 249
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminAdd;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    .line 250
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const/16 v3, 0x369

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 254
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 258
    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 259
    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v2

    .line 258
    invoke-static {v0, p1, v2}, Lcom/android/settingslib/h;->c(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 261
    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 262
    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v4

    .line 261
    invoke-static {v2, p1, v4}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 264
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 266
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$800(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 270
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$900(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1000(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 271
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1, v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    return-void

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    return-void

    .line 276
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 277
    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x36a

    goto :goto_2

    :cond_6
    const/16 v2, 0x36b

    :goto_2
    new-array v3, v1, [Landroid/util/Pair;

    .line 276
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 281
    new-instance p1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1200(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v3, v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v3, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$a;-><init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 284
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_9

    .line 288
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v4}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v4

    invoke-virtual {v0, v2, p1, v4}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isAppEncrypted(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->showAppEncryptedHintDialog(Landroid/content/Context;)V

    return-void

    .line 291
    :cond_8
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void

    .line 294
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)I

    move-result v3

    invoke-virtual {v0, v2, p1, v3}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isAppEncrypted(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 295
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->showAppEncryptedHintDialog(Landroid/content/Context;)V

    return-void

    .line 297
    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$c;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method
