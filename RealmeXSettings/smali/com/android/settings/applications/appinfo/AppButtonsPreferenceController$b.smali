.class public final Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;
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
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "app_detail_force_stop"

    .line 309
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "1"

    .line 310
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name"

    .line 311
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->mAppEntry:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    iget-object v2, v2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1400(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$700(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 320
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1500(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 319
    invoke-static {p1, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController$b;->a:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;I)V

    return-void
.end method
