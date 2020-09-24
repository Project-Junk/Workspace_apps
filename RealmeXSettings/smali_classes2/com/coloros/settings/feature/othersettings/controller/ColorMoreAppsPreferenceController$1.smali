.class final Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController$1;
.super Ljava/lang/Object;
.source "ColorMoreAppsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->handleDownloadsUIClick(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/coloros/settings/feature/othersettings/controller/ColorMoreAppsPreferenceController;->OTHTER_PACKAGES:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    return p1
.end method
