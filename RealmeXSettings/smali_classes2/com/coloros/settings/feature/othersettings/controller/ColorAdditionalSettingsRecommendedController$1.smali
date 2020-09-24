.class final Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;
.super Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;
.source "ColorAdditionalSettingsRecommendedController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->displayPreference(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.coloros.operationtips"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->access$100(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->access$200(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController$1;->a:Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;->access$300(Lcom/coloros/settings/feature/othersettings/controller/ColorAdditionalSettingsRecommendedController;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f010067

    const v2, 0x7f010068

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
