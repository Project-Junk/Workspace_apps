.class public Lcom/coloros/settings/wizard/ColorWizardEncodePicker;
.super Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;
.source "ColorWizardEncodePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/coloros/settings/wizard/ColorWizardAbstractPicker;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/coloros/settings/wizard/ColorWizardEncodePicker;->b:Z

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "com.coloros.bootreg.action.region_to_bootreg"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->O(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.coloros.bootreg.activity.DataPage"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "android.settings.WIFI_SETTINGS"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.wirelesssettings"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "oppoWizardRun"

    .line 43
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/wizard/ColorWizardEncodePicker;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final b()I
    .locals 1

    const v0, 0x7f1204dd

    return v0
.end method

.method protected final c()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 50
    new-instance v0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;

    invoke-direct {v0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;-><init>()V

    return-object v0
.end method
