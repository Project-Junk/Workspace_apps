.class final Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;
.super Lcom/android/settings/applications/t;
.source "AllAppsInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AllAppsInfoPreferenceController;->onReloadDataCompleted(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/AllAppsInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AllAppsInfoPreferenceController;Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;->a:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    const/4 p1, -0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/applications/t;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;->a:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    iget-object v0, v0, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/applications/AllAppsInfoPreferenceController$1;->a:Lcom/android/settings/applications/AllAppsInfoPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/AllAppsInfoPreferenceController;->access$000(Lcom/android/settings/applications/AllAppsInfoPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f120206

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
